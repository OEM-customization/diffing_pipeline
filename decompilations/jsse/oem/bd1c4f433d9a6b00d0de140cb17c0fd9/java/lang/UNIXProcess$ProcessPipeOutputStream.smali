.class Ljava/lang/UNIXProcess$ProcessPipeOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "UNIXProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/UNIXProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessPipeOutputStream"
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 5
    .param p1, "fd"    # I

    .prologue
    .line 314
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {p1}, Ljava/lang/UNIXProcess;->newFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    invoke-direct {p0, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 315
    return-void
.end method


# virtual methods
.method declared-synchronized processExited()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 319
    :try_start_1
    iget-object v1, p0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;->out:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    .line 320
    .local v1, "out":Ljava/io/OutputStream;
    if-eqz v1, :cond_c

    .line 322
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_e
    .catchall {:try_start_5 .. :try_end_8} :catchall_10

    .line 327
    :goto_8
    :try_start_8
    sget-object v2, Ljava/lang/ProcessBuilder$NullOutputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullOutputStream;

    iput-object v2, p0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;->out:Ljava/io/OutputStream;
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    :cond_c
    monitor-exit p0

    .line 329
    return-void

    .line 323
    :catch_e
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_8

    .end local v0    # "ignored":Ljava/io/IOException;
    .end local v1    # "out":Ljava/io/OutputStream;
    :catchall_10
    move-exception v2

    monitor-exit p0

    throw v2
.end method
