.class Lsun/nio/ch/SourceChannelImpl;
.super Ljava/nio/channels/Pipe$SourceChannel;
.source "SourceChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/SelChImpl;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_INUSE:I = 0x0

.field private static final ST_KILLED:I = 0x1

.field private static final ST_UNINITIALIZED:I = -0x1

.field private static final nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field fd:Ljava/io/FileDescriptor;

.field fdVal:I

.field private final lock:Ljava/lang/Object;

.field private volatile state:I

.field private final stateLock:Ljava/lang/Object;

.field private volatile thread:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/ch/SourceChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/SourceChannelImpl;->-assertionsDisabled:Z

    .line 41
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    invoke-direct {v0}, Lsun/nio/ch/FileDispatcherImpl;-><init>()V

    sput-object v0, Lsun/nio/ch/SourceChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Ljava/nio/channels/Pipe$SourceChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SourceChannelImpl;->lock:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SourceChannelImpl;->stateLock:Ljava/lang/Object;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SourceChannelImpl;->state:I

    .line 81
    iput-object p2, p0, Lsun/nio/ch/SourceChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 82
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/SourceChannelImpl;->fdVal:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/SourceChannelImpl;->state:I

    .line 84
    return-void
.end method

.method private ensureOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 155
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 156
    :cond_c
    return-void
.end method


# virtual methods
.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lsun/nio/ch/SourceChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFDVal()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lsun/nio/ch/SourceChannelImpl;->fdVal:I

    return v0
.end method

.method protected implCloseSelectableChannel()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v3, p0, Lsun/nio/ch/SourceChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 88
    :try_start_3
    iget v2, p0, Lsun/nio/ch/SourceChannelImpl;->state:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_f

    .line 89
    sget-object v2, Lsun/nio/ch/SourceChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v4, p0, Lsun/nio/ch/SourceChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v4}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    .line 90
    :cond_f
    iget-wide v0, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 91
    .local v0, "th":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1a

    .line 92
    invoke-static {v0, v1}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 93
    :cond_1a
    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_23

    .line 94
    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->kill()V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit v3

    .line 96
    return-void

    .line 87
    .end local v0    # "th":J
    :catchall_25
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected implConfigureBlocking(Z)V
    .registers 3
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lsun/nio/ch/SourceChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 114
    return-void
.end method

.method public kill()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 99
    iget-object v1, p0, Lsun/nio/ch/SourceChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_4
    iget v0, p0, Lsun/nio/ch/SourceChannelImpl;->state:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_2a

    if-ne v0, v2, :cond_a

    monitor-exit v1

    .line 101
    return-void

    .line 102
    :cond_a
    :try_start_a
    iget v0, p0, Lsun/nio/ch/SourceChannelImpl;->state:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_14

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lsun/nio/ch/SourceChannelImpl;->state:I
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_2a

    monitor-exit v1

    .line 104
    return-void

    .line 106
    :cond_14
    :try_start_14
    sget-boolean v0, Lsun/nio/ch/SourceChannelImpl;->-assertionsDisabled:Z

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_24
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_2a

    .line 99
    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 107
    :cond_2d
    :try_start_2d
    sget-object v0, Lsun/nio/ch/SourceChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/SourceChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lsun/nio/ch/SourceChannelImpl;->state:I
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_2a

    monitor-exit v1

    .line 110
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 11
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 159
    if-nez p1, :cond_b

    .line 160
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 162
    :cond_b
    invoke-direct {p0}, Lsun/nio/ch/SourceChannelImpl;->ensureOpen()V

    .line 163
    iget-object v4, p0, Lsun/nio/ch/SourceChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, "n":I
    :try_start_12
    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->begin()V

    .line 167
    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->isOpen()Z
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_74

    move-result v1

    if-nez v1, :cond_38

    .line 175
    const-wide/16 v6, 0x0

    :try_start_1d
    iput-wide v6, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/SourceChannelImpl;->end(Z)V

    .line 177
    sget-boolean v1, Lsun/nio/ch/SourceChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_36

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_36

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_33

    .line 163
    :catchall_33
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_36
    monitor-exit v4

    .line 168
    return v3

    .line 169
    :cond_38
    :try_start_38
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 171
    :cond_3e
    iget-object v1, p0, Lsun/nio/ch/SourceChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    sget-object v5, Lsun/nio/ch/SourceChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v1, p1, v6, v7, v5}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 172
    const/4 v1, -0x3

    if-ne v0, v1, :cond_51

    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 173
    :cond_51
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_54
    .catchall {:try_start_38 .. :try_end_54} :catchall_74

    move-result v1

    .line 175
    const-wide/16 v6, 0x0

    :try_start_57
    iput-wide v6, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 176
    if-gtz v0, :cond_5d

    if-ne v0, v8, :cond_70

    :cond_5d
    :goto_5d
    invoke-virtual {p0, v2}, Lsun/nio/ch/SourceChannelImpl;->end(Z)V

    .line 177
    sget-boolean v2, Lsun/nio/ch/SourceChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_72

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_72

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_70
    .catchall {:try_start_57 .. :try_end_70} :catchall_33

    :cond_70
    move v2, v3

    .line 176
    goto :goto_5d

    :cond_72
    monitor-exit v4

    .line 173
    return v1

    .line 174
    :catchall_74
    move-exception v1

    .line 175
    const-wide/16 v6, 0x0

    :try_start_77
    iput-wide v6, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 176
    if-gtz v0, :cond_7d

    if-ne v0, v8, :cond_90

    :cond_7d
    :goto_7d
    invoke-virtual {p0, v2}, Lsun/nio/ch/SourceChannelImpl;->end(Z)V

    .line 177
    sget-boolean v2, Lsun/nio/ch/SourceChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_92

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_92

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_90
    move v2, v3

    .line 176
    goto :goto_7d

    .line 174
    :cond_92
    throw v1
    :try_end_93
    .catchall {:try_start_77 .. :try_end_93} :catchall_33
.end method

.method public read([Ljava/nio/ByteBuffer;)J
    .registers 16
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-wide/16 v10, 0x0

    .line 191
    if-nez p1, :cond_e

    .line 192
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 193
    :cond_e
    invoke-direct {p0}, Lsun/nio/ch/SourceChannelImpl;->ensureOpen()V

    .line 194
    iget-object v5, p0, Lsun/nio/ch/SourceChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 195
    const-wide/16 v0, 0x0

    .line 197
    .local v0, "n":J
    :try_start_16
    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->begin()V

    .line 198
    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->isOpen()Z
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_7d

    move-result v2

    if-nez v2, :cond_3c

    .line 206
    const-wide/16 v2, 0x0

    :try_start_21
    iput-wide v2, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 207
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/nio/ch/SourceChannelImpl;->end(Z)V

    .line 208
    sget-boolean v2, Lsun/nio/ch/SourceChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_3a

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_3a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_37

    .line 194
    :catchall_37
    move-exception v2

    monitor-exit v5

    throw v2

    :cond_3a
    monitor-exit v5

    .line 199
    return-wide v10

    .line 200
    :cond_3c
    :try_start_3c
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 202
    :cond_42
    iget-object v2, p0, Lsun/nio/ch/SourceChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v6, Lsun/nio/ch/SourceChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v2, p1, v6}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    .line 203
    const-wide/16 v6, -0x3

    cmp-long v2, v0, v6

    if-nez v2, :cond_56

    invoke-virtual {p0}, Lsun/nio/ch/SourceChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_42

    .line 204
    :cond_56
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_59
    .catchall {:try_start_3c .. :try_end_59} :catchall_7d

    move-result-wide v6

    .line 206
    const-wide/16 v8, 0x0

    :try_start_5c
    iput-wide v8, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 207
    cmp-long v2, v0, v10

    if-gtz v2, :cond_66

    cmp-long v2, v0, v12

    if-nez v2, :cond_79

    :cond_66
    :goto_66
    invoke-virtual {p0, v3}, Lsun/nio/ch/SourceChannelImpl;->end(Z)V

    .line 208
    sget-boolean v2, Lsun/nio/ch/SourceChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_7b

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_7b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_79
    .catchall {:try_start_5c .. :try_end_79} :catchall_37

    :cond_79
    move v3, v4

    .line 207
    goto :goto_66

    :cond_7b
    monitor-exit v5

    .line 204
    return-wide v6

    .line 205
    :catchall_7d
    move-exception v2

    .line 206
    const-wide/16 v6, 0x0

    :try_start_80
    iput-wide v6, p0, Lsun/nio/ch/SourceChannelImpl;->thread:J

    .line 207
    cmp-long v6, v0, v10

    if-gtz v6, :cond_8a

    cmp-long v6, v0, v12

    if-nez v6, :cond_9d

    :cond_8a
    :goto_8a
    invoke-virtual {p0, v3}, Lsun/nio/ch/SourceChannelImpl;->end(Z)V

    .line 208
    sget-boolean v3, Lsun/nio/ch/SourceChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_9f

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_9f

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_9d
    move v3, v4

    .line 207
    goto :goto_8a

    .line 205
    :cond_9f
    throw v2
    :try_end_a0
    .catchall {:try_start_80 .. :try_end_a0} :catchall_37
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 6
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    if-ltz p2, :cond_4

    if-gez p3, :cond_a

    .line 186
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 185
    :cond_a
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_4

    .line 187
    invoke-static {p1, p2, p3}, Lsun/nio/ch/Util;->subsequence([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/nio/ch/SourceChannelImpl;->read([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 148
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 149
    sget-short p1, Lsun/nio/ch/Net;->POLLIN:S

    .line 150
    :cond_5
    iget-object v0, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    invoke-virtual {v0, p2, p1}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    .line 151
    return-void
.end method

.method public translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SourceChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 140
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SourceChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 11
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 118
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v0

    .line 119
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v2

    .line 120
    .local v2, "oldOps":I
    move v1, p2

    .line 122
    .local v1, "newOps":I
    sget-short v5, Lsun/nio/ch/Net;->POLLNVAL:S

    and-int/2addr v5, p1

    if-eqz v5, :cond_19

    .line 123
    new-instance v3, Ljava/lang/Error;

    const-string/jumbo v4, "POLLNVAL detected"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    :cond_19
    sget-short v5, Lsun/nio/ch/Net;->POLLERR:S

    sget-short v6, Lsun/nio/ch/Net;->POLLHUP:S

    or-int/2addr v5, v6

    and-int/2addr v5, p1

    if-eqz v5, :cond_2c

    .line 126
    move v1, v0

    .line 127
    invoke-virtual {p3, v0}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 128
    not-int v5, v2

    and-int/2addr v5, v0

    if-eqz v5, :cond_2a

    :goto_29
    return v3

    :cond_2a
    move v3, v4

    goto :goto_29

    .line 131
    :cond_2c
    sget-short v5, Lsun/nio/ch/Net;->POLLIN:S

    and-int/2addr v5, p1

    if-eqz v5, :cond_37

    .line 132
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_37

    .line 133
    or-int/lit8 v1, p2, 0x1

    .line 135
    :cond_37
    invoke-virtual {p3, v1}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 136
    not-int v5, v2

    and-int/2addr v5, v1

    if-eqz v5, :cond_3f

    :goto_3e
    return v3

    :cond_3f
    move v3, v4

    goto :goto_3e
.end method
