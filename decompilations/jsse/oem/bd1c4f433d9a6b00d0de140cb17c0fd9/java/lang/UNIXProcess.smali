.class final Ljava/lang/UNIXProcess;
.super Ljava/lang/Process;
.source "UNIXProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/UNIXProcess$1;,
        Ljava/lang/UNIXProcess$ProcessPipeInputStream;,
        Ljava/lang/UNIXProcess$ProcessPipeOutputStream;,
        Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;
    }
.end annotation


# static fields
.field private static final processReaperExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private exitcode:I

.field private hasExited:Z

.field private final pid:I

.field private stderr:Ljava/io/InputStream;

.field private stdin:Ljava/io/OutputStream;

.field private stdout:Ljava/io/InputStream;


# direct methods
.method static synthetic -get0(Ljava/lang/UNIXProcess;)I
    .registers 2
    .param p0, "-this"    # Ljava/lang/UNIXProcess;

    .prologue
    iget v0, p0, Ljava/lang/UNIXProcess;->pid:I

    return v0
.end method

.method static synthetic -wrap0(Ljava/lang/UNIXProcess;I)I
    .registers 3
    .param p0, "-this"    # Ljava/lang/UNIXProcess;
    .param p1, "pid"    # I

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/UNIXProcess;->waitForProcessExit(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 119
    new-instance v0, Ljava/lang/UNIXProcess$1;

    invoke-direct {v0}, Ljava/lang/UNIXProcess$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 118
    sput-object v0, Ljava/lang/UNIXProcess;->processReaperExecutor:Ljava/util/concurrent/Executor;

    .line 256
    invoke-static {}, Ljava/lang/UNIXProcess;->initIDs()V

    .line 55
    return-void
.end method

.method constructor <init>([B[BI[BI[B[IZ)V
    .registers 11
    .param p1, "prog"    # [B
    .param p2, "argBlock"    # [B
    .param p3, "argc"    # I
    .param p4, "envBlock"    # [B
    .param p5, "envc"    # I
    .param p6, "dir"    # [B
    .param p7, "fds"    # [I
    .param p8, "redirectErrorStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    .line 133
    invoke-direct/range {p0 .. p8}, Ljava/lang/UNIXProcess;->forkAndExec([B[BI[BI[B[IZ)I

    move-result v1

    iput v1, p0, Ljava/lang/UNIXProcess;->pid:I

    .line 141
    :try_start_9
    new-instance v1, Ljava/lang/UNIXProcess$2;

    invoke-direct {v1, p0, p7}, Ljava/lang/UNIXProcess$2;-><init>(Ljava/lang/UNIXProcess;[I)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/security/PrivilegedActionException; {:try_start_9 .. :try_end_11} :catch_12

    .line 149
    return-void

    .line 146
    :catch_12
    move-exception v0

    .line 147
    .local v0, "ex":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method private static native destroyProcess(I)V
.end method

.method private native forkAndExec([B[BI[BI[B[IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native initIDs()V
.end method

.method static newFileDescriptor(I)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "fd"    # I

    .prologue
    .line 152
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 153
    .local v0, "fileDescriptor":Ljava/io/FileDescriptor;
    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 154
    return-object v0
.end method

.method private native waitForProcessExit(I)I
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    .line 228
    monitor-enter p0

    .line 229
    :try_start_1
    iget-boolean v1, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    if-nez v1, :cond_a

    .line 230
    iget v1, p0, Ljava/lang/UNIXProcess;->pid:I

    invoke-static {v1}, Ljava/lang/UNIXProcess;->destroyProcess(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1b

    :cond_a
    monitor-exit p0

    .line 232
    :try_start_b
    iget-object v1, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_22

    .line 233
    :goto_10
    :try_start_10
    iget-object v1, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_20

    .line 234
    :goto_15
    :try_start_15
    iget-object v1, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_1e

    .line 235
    :goto_1a
    return-void

    .line 228
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 234
    :catch_1e
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_1a

    .line 233
    .end local v0    # "ignored":Ljava/io/IOException;
    :catch_20
    move-exception v0

    .restart local v0    # "ignored":Ljava/io/IOException;
    goto :goto_15

    .line 232
    .end local v0    # "ignored":Ljava/io/IOException;
    :catch_22
    move-exception v0

    .restart local v0    # "ignored":Ljava/io/IOException;
    goto :goto_10
.end method

.method public declared-synchronized exitValue()I
    .registers 3

    .prologue
    monitor-enter p0

    .line 214
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    if-nez v0, :cond_11

    .line 215
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "process hasn\'t exited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 217
    :cond_11
    :try_start_11
    iget v0, p0, Ljava/lang/UNIXProcess;->exitcode:I
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_e

    monitor-exit p0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    return-object v0
.end method

.method initStreams([I)V
    .registers 7
    .param p1, "fds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 158
    aget v0, p1, v1

    if-ne v0, v2, :cond_27

    .line 159
    sget-object v0, Ljava/lang/ProcessBuilder$NullOutputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullOutputStream;

    .line 158
    :goto_a
    iput-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    .line 162
    aget v0, p1, v3

    if-ne v0, v2, :cond_2f

    .line 163
    sget-object v0, Ljava/lang/ProcessBuilder$NullInputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;

    .line 162
    :goto_12
    iput-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    .line 166
    aget v0, p1, v4

    if-ne v0, v2, :cond_37

    .line 167
    sget-object v0, Ljava/lang/ProcessBuilder$NullInputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;

    .line 166
    :goto_1a
    iput-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    .line 170
    sget-object v0, Ljava/lang/UNIXProcess;->processReaperExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Ljava/lang/UNIXProcess$3;

    invoke-direct {v1, p0}, Ljava/lang/UNIXProcess$3;-><init>(Ljava/lang/UNIXProcess;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 175
    return-void

    .line 160
    :cond_27
    new-instance v0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;

    aget v1, p1, v1

    invoke-direct {v0, v1}, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;-><init>(I)V

    goto :goto_a

    .line 164
    :cond_2f
    new-instance v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    aget v1, p1, v3

    invoke-direct {v0, v1}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;-><init>(I)V

    goto :goto_12

    .line 168
    :cond_37
    new-instance v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    aget v1, p1, v4

    invoke-direct {v0, v1}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;-><init>(I)V

    goto :goto_1a
.end method

.method processExited(I)V
    .registers 3
    .param p1, "exitcode"    # I

    .prologue
    .line 178
    monitor-enter p0

    .line 179
    :try_start_1
    iput p1, p0, Ljava/lang/UNIXProcess;->exitcode:I

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    .line 181
    invoke-virtual {p0}, Ljava/lang/UNIXProcess;->notifyAll()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_32

    monitor-exit p0

    .line 184
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    if-eqz v0, :cond_17

    .line 185
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    check-cast v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    invoke-virtual {v0}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->processExited()V

    .line 187
    :cond_17
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    if-eqz v0, :cond_24

    .line 188
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    check-cast v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    invoke-virtual {v0}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->processExited()V

    .line 190
    :cond_24
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    instance-of v0, v0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;

    if-eqz v0, :cond_31

    .line 191
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    check-cast v0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;

    invoke-virtual {v0}, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;->processExited()V

    .line 192
    :cond_31
    return-void

    .line 178
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Process[pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Ljava/lang/UNIXProcess;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    iget-boolean v1, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    if-eqz v1, :cond_27

    .line 242
    const-string/jumbo v1, " ,hasExited=true, exitcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget v1, p0, Ljava/lang/UNIXProcess;->exitcode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :goto_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 246
    :cond_27
    const-string/jumbo v1, ", hasExited=false]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22
.end method

.method public declared-synchronized waitFor()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 207
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    if-nez v0, :cond_c

    .line 208
    invoke-virtual {p0}, Ljava/lang/UNIXProcess;->wait()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_1

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 210
    :cond_c
    :try_start_c
    iget v0, p0, Ljava/lang/UNIXProcess;->exitcode:I
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_9

    monitor-exit p0

    return v0
.end method
