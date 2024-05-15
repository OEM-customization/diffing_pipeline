.class Lsun/nio/ch/FileChannelImpl$Unmapper;
.super Ljava/lang/Object;
.source "FileChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/FileChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Unmapper"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static volatile count:I

.field private static final nd:Lsun/nio/ch/NativeDispatcher;

.field static volatile totalCapacity:J

.field static volatile totalSize:J


# instance fields
.field private volatile address:J

.field private final cap:I

.field private final fd:Ljava/io/FileDescriptor;

.field private final size:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/ch/FileChannelImpl$Unmapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/FileChannelImpl$Unmapper;->-assertionsDisabled:Z

    .line 827
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    invoke-direct {v0}, Lsun/nio/ch/FileDispatcherImpl;-><init>()V

    sput-object v0, Lsun/nio/ch/FileChannelImpl$Unmapper;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 823
    return-void
.end method

.method private constructor <init>(JJILjava/io/FileDescriptor;)V
    .registers 14
    .param p1, "address"    # J
    .param p3, "size"    # J
    .param p5, "cap"    # I
    .param p6, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    sget-boolean v0, Lsun/nio/ch/FileChannelImpl$Unmapper;->-assertionsDisabled:Z

    if-nez v0, :cond_13

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 843
    :cond_13
    iput-wide p1, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    .line 844
    iput-wide p3, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->size:J

    .line 845
    iput p5, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->cap:I

    .line 846
    iput-object p6, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->fd:Ljava/io/FileDescriptor;

    .line 848
    const-class v1, Lsun/nio/ch/FileChannelImpl$Unmapper;

    monitor-enter v1

    .line 849
    :try_start_1e
    sget v0, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    .line 850
    sget-wide v2, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    add-long/2addr v2, p3

    sput-wide v2, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    .line 851
    sget-wide v2, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J

    int-to-long v4, p5

    add-long/2addr v2, v4

    sput-wide v2, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_31

    monitor-exit v1

    .line 853
    return-void

    .line 848
    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method synthetic constructor <init>(JJILjava/io/FileDescriptor;Lsun/nio/ch/FileChannelImpl$Unmapper;)V
    .registers 9
    .param p1, "address"    # J
    .param p3, "size"    # J
    .param p5, "cap"    # I
    .param p6, "fd"    # Ljava/io/FileDescriptor;
    .param p7, "-this4"    # Lsun/nio/ch/FileChannelImpl$Unmapper;

    .prologue
    invoke-direct/range {p0 .. p6}, Lsun/nio/ch/FileChannelImpl$Unmapper;-><init>(JJILjava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 856
    iget-wide v2, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_9

    .line 857
    return-void

    .line 858
    :cond_9
    iget-wide v2, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    iget-wide v4, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->size:J

    invoke-static {v2, v3, v4, v5}, Lsun/nio/ch/FileChannelImpl;->-wrap0(JJ)I

    .line 859
    iput-wide v6, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    .line 862
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 864
    :try_start_1a
    sget-object v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_3e

    .line 870
    :cond_21
    :goto_21
    const-class v2, Lsun/nio/ch/FileChannelImpl$Unmapper;

    monitor-enter v2

    .line 871
    :try_start_24
    sget v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    .line 872
    sget-wide v4, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    iget-wide v6, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->size:J

    sub-long/2addr v4, v6

    sput-wide v4, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    .line 873
    sget-wide v4, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J

    iget v1, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->cap:I

    int-to-long v6, v1

    sub-long/2addr v4, v6

    sput-wide v4, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_3b

    monitor-exit v2

    .line 875
    return-void

    .line 870
    :catchall_3b
    move-exception v1

    monitor-exit v2

    throw v1

    .line 865
    :catch_3e
    move-exception v0

    .local v0, "ignore":Ljava/io/IOException;
    goto :goto_21
.end method
