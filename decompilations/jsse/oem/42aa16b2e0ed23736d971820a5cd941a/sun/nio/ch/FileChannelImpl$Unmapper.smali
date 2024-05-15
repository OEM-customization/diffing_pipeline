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
.field static final synthetic blacklist $assertionsDisabled:Z

.field static volatile blacklist count:I

.field private static final blacklist nd:Lsun/nio/ch/NativeDispatcher;

.field static volatile blacklist totalCapacity:J

.field static volatile blacklist totalSize:J


# instance fields
.field private volatile blacklist address:J

.field private final blacklist cap:I

.field private final blacklist fd:Ljava/io/FileDescriptor;

.field private final blacklist size:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 842
    const-class v0, Lsun/nio/ch/FileChannelImpl;

    .line 846
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    invoke-direct {v0}, Lsun/nio/ch/FileDispatcherImpl;-><init>()V

    sput-object v0, Lsun/nio/ch/FileChannelImpl$Unmapper;->nd:Lsun/nio/ch/NativeDispatcher;

    return-void
.end method

.method private constructor blacklist <init>(JJILjava/io/FileDescriptor;)V
    .registers 12
    .param p1, "address"    # J
    .param p3, "size"    # J
    .param p5, "cap"    # I
    .param p6, "fd"    # Ljava/io/FileDescriptor;

    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    nop

    .line 862
    iput-wide p1, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    .line 863
    iput-wide p3, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->size:J

    .line 864
    iput p5, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->cap:I

    .line 865
    iput-object p6, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->fd:Ljava/io/FileDescriptor;

    .line 867
    const-class v0, Lsun/nio/ch/FileChannelImpl$Unmapper;

    monitor-enter v0

    .line 868
    :try_start_f
    sget v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    .line 869
    sget-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    add-long/2addr v1, p3

    sput-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    .line 870
    sget-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J

    int-to-long v3, p5

    add-long/2addr v1, v3

    sput-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J

    .line 871
    monitor-exit v0

    .line 872
    return-void

    .line 871
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_22

    throw v1
.end method

.method synthetic constructor blacklist <init>(JJILjava/io/FileDescriptor;Lsun/nio/ch/FileChannelImpl$1;)V
    .registers 8
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # I
    .param p6, "x3"    # Ljava/io/FileDescriptor;
    .param p7, "x4"    # Lsun/nio/ch/FileChannelImpl$1;

    .line 842
    invoke-direct/range {p0 .. p6}, Lsun/nio/ch/FileChannelImpl$Unmapper;-><init>(JJILjava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .registers 7

    .line 875
    iget-wide v0, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 876
    return-void

    .line 877
    :cond_9
    iget-wide v0, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    iget-wide v4, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->size:J

    # invokes: Lsun/nio/ch/FileChannelImpl;->unmap0(JJ)I
    invoke-static {v0, v1, v4, v5}, Lsun/nio/ch/FileChannelImpl;->access$000(JJ)I

    .line 878
    iput-wide v2, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->address:J

    .line 881
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 883
    :try_start_1a
    sget-object v0, Lsun/nio/ch/FileChannelImpl$Unmapper;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_22

    .line 886
    goto :goto_23

    .line 884
    :catch_22
    move-exception v0

    .line 889
    :cond_23
    :goto_23
    const-class v0, Lsun/nio/ch/FileChannelImpl$Unmapper;

    monitor-enter v0

    .line 890
    :try_start_26
    sget v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->count:I

    .line 891
    sget-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    iget-wide v3, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->size:J

    sub-long/2addr v1, v3

    sput-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalSize:J

    .line 892
    sget-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J

    iget v3, p0, Lsun/nio/ch/FileChannelImpl$Unmapper;->cap:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    sput-wide v1, Lsun/nio/ch/FileChannelImpl$Unmapper;->totalCapacity:J

    .line 893
    monitor-exit v0

    .line 894
    return-void

    .line 893
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_3d

    throw v1
.end method
