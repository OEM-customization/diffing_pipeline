.class public Lsun/nio/ch/FileChannelImpl;
.super Ljava/nio/channels/FileChannel;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;,
        Lsun/nio/ch/FileChannelImpl$Unmapper;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final MAPPED_TRANSFER_SIZE:J = 0x800000L

.field private static final MAP_PV:I = 0x2

.field private static final MAP_RO:I = 0x0

.field private static final MAP_RW:I = 0x1

.field private static final TRANSFER_SIZE:I = 0x2000

.field private static final allocationGranularity:J

.field private static volatile fileSupported:Z

.field private static isSharedFileLockTable:Z

.field private static volatile pipeSupported:Z

.field private static volatile propertyChecked:Z

.field private static volatile transferSupported:Z


# instance fields
.field private final append:Z

.field public final fd:Ljava/io/FileDescriptor;

.field private volatile fileLockTable:Lsun/nio/ch/FileLockTable;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final nd:Lsun/nio/ch/FileDispatcher;

.field private final parent:Ljava/lang/Object;

.field private final path:Ljava/lang/String;

.field private final positionLock:Ljava/lang/Object;

.field private final readable:Z

.field private final threads:Lsun/nio/ch/NativeThreadSet;

.field private final writable:Z


# direct methods
.method static synthetic -wrap0(JJ)I
    .registers 6
    .param p0, "address"    # J
    .param p2, "length"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->unmap0(JJ)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    const-class v0, Lsun/nio/ch/FileChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    .line 431
    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z

    .line 436
    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    .line 441
    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z

    .line 1241
    invoke-static {}, Lsun/nio/ch/FileChannelImpl;->initIDs()J

    move-result-wide v0

    sput-wide v0, Lsun/nio/ch/FileChannelImpl;->allocationGranularity:J

    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "readable"    # Z
    .param p4, "writable"    # Z
    .param p5, "append"    # Z
    .param p6, "parent"    # Ljava/lang/Object;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    .line 83
    new-instance v0, Lsun/nio/ch/NativeThreadSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lsun/nio/ch/NativeThreadSet;-><init>(I)V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    .line 89
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 94
    iput-object p1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 95
    iput-boolean p3, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    .line 96
    iput-boolean p4, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    .line 97
    iput-boolean p5, p0, Lsun/nio/ch/FileChannelImpl;->append:Z

    .line 98
    iput-object p6, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    .line 99
    iput-object p2, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    .line 100
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    invoke-direct {v0, p5}, Lsun/nio/ch/FileDispatcherImpl;-><init>(Z)V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    .line 102
    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 103
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 105
    :cond_3b
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
    .line 124
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 125
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 126
    :cond_c
    return-void
.end method

.method private fileLockTable()Lsun/nio/ch/FileLockTable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1050
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v1, :cond_26

    .line 1051
    monitor-enter p0

    .line 1052
    :try_start_5
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v1, :cond_25

    .line 1053
    invoke-static {}, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1054
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_30

    move-result v0

    .line 1056
    .local v0, "ti":I
    :try_start_15
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1057
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {p0, v1}, Lsun/nio/ch/FileLockTable;->newSharedFileLockTable(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Lsun/nio/ch/FileLockTable;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_29

    .line 1059
    :try_start_20
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_30

    .end local v0    # "ti":I
    :cond_25
    :goto_25
    monitor-exit p0

    .line 1067
    :cond_26
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    return-object v1

    .line 1058
    .restart local v0    # "ti":I
    :catchall_29
    move-exception v1

    .line 1059
    :try_start_2a
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1058
    throw v1
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_30

    .line 1051
    .end local v0    # "ti":I
    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1062
    :cond_33
    :try_start_33
    new-instance v1, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;

    invoke-direct {v1}, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_30

    goto :goto_25
.end method

.method private static native initIDs()J
.end method

.method private static isSharedFileLockTable()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1035
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z

    if-nez v2, :cond_29

    .line 1036
    const-class v2, Lsun/nio/ch/FileChannelImpl;

    monitor-enter v2

    .line 1037
    :try_start_8
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z

    if-nez v3, :cond_28

    .line 1039
    new-instance v3, Lsun/security/action/GetPropertyAction;

    .line 1040
    const-string/jumbo v4, "sun.nio.ch.disableSystemWideOverlappingFileLockCheck"

    .line 1039
    invoke-direct {v3, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 1038
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1041
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_23

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_23
    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable:Z

    .line 1042
    const/4 v1, 0x1

    sput-boolean v1, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2c

    :cond_28
    monitor-exit v2

    .line 1046
    :cond_29
    sget-boolean v1, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable:Z

    return v1

    .line 1036
    :catchall_2c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private native map0(IJJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;
    .registers 12
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "readable"    # Z
    .param p3, "writable"    # Z
    .param p4, "parent"    # Ljava/lang/Object;

    .prologue
    .line 112
    new-instance v0, Lsun/nio/ch/FileChannelImpl;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileChannelImpl;-><init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)V

    return-object v0
.end method

.method public static open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;
    .registers 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "readable"    # Z
    .param p3, "writable"    # Z
    .param p4, "append"    # Z
    .param p5, "parent"    # Ljava/lang/Object;

    .prologue
    .line 120
    new-instance v0, Lsun/nio/ch/FileChannelImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileChannelImpl;-><init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)V

    return-object v0
.end method

.method private native position0(Ljava/io/FileDescriptor;J)J
.end method

.method private readInternal(Ljava/nio/ByteBuffer;J)I
    .registers 10
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 764
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_1e

    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v4}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 765
    :cond_1e
    const/4 v0, 0x0

    .line 766
    .local v0, "n":I
    const/4 v1, -0x1

    .line 768
    .local v1, "ti":I
    :try_start_20
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 769
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    .line 770
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_7b

    move-result v4

    if-nez v4, :cond_49

    .line 771
    const/4 v2, -0x1

    .line 777
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 778
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 779
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_48

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_48

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 771
    :cond_48
    return v2

    .line 773
    :cond_49
    :try_start_49
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v4, p1, p2, p3, v5}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 774
    const/4 v4, -0x3

    if-ne v0, v4, :cond_5a

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_49

    .line 775
    :cond_5a
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_5d
    .catchall {:try_start_49 .. :try_end_5d} :catchall_7b

    move-result v4

    .line 777
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 778
    if-lez v0, :cond_78

    :goto_65
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 779
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_7a

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_7a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_78
    move v2, v3

    .line 778
    goto :goto_65

    .line 775
    :cond_7a
    return v4

    .line 776
    :catchall_7b
    move-exception v4

    .line 777
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 778
    if-lez v0, :cond_96

    :goto_83
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 779
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_98

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_98

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_96
    move v2, v3

    .line 778
    goto :goto_83

    .line 776
    :cond_98
    throw v4
.end method

.method private transferFromArbitraryChannel(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .registers 22
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    const-wide/16 v12, 0x2000

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v3, v12

    .line 696
    .local v3, "c":I
    invoke-static {v3}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 697
    .local v2, "bb":Ljava/nio/ByteBuffer;
    const-wide/16 v8, 0x0

    .line 698
    .local v8, "tw":J
    move-wide/from16 v6, p2

    .line 700
    .local v6, "pos":J
    :try_start_11
    invoke-static {v2}, Lsun/nio/ch/Util;->erase(Ljava/nio/ByteBuffer;)V

    .line 701
    :goto_14
    cmp-long v11, v8, p4

    if-gez v11, :cond_2c

    .line 702
    sub-long v12, p4, v8

    const-wide/16 v14, 0x2000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v11, v12

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 705
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_29} :catch_43
    .catchall {:try_start_11 .. :try_end_29} :catchall_4f

    move-result v4

    .line 706
    .local v4, "nr":I
    if-gtz v4, :cond_30

    .line 722
    .end local v4    # "nr":I
    :cond_2c
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 716
    return-wide v8

    .line 708
    .restart local v4    # "nr":I
    :cond_30
    :try_start_30
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 709
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lsun/nio/ch/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    move-result v5

    .line 710
    .local v5, "nw":I
    int-to-long v12, v5

    add-long/2addr v8, v12

    .line 711
    if-ne v5, v4, :cond_2c

    .line 713
    int-to-long v12, v5

    add-long/2addr v6, v12

    .line 714
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_42} :catch_43
    .catchall {:try_start_30 .. :try_end_42} :catchall_4f

    goto :goto_14

    .line 717
    .end local v4    # "nr":I
    .end local v5    # "nw":I
    :catch_43
    move-exception v10

    .line 718
    .local v10, "x":Ljava/io/IOException;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-lez v11, :cond_4e

    .line 722
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 719
    return-wide v8

    .line 720
    :cond_4e
    :try_start_4e
    throw v10
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    .line 721
    .end local v10    # "x":Ljava/io/IOException;
    :catchall_4f
    move-exception v11

    .line 722
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 721
    throw v11
.end method

.method private transferFromFileChannel(Lsun/nio/ch/FileChannelImpl;JJ)J
    .registers 30
    .param p1, "src"    # Lsun/nio/ch/FileChannelImpl;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v4, :cond_c

    .line 656
    new-instance v4, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v4}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v4

    .line 657
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 658
    :try_start_13
    invoke-virtual/range {p1 .. p1}, Lsun/nio/ch/FileChannelImpl;->position()J

    move-result-wide v18

    .line 659
    .local v18, "pos":J
    invoke-virtual/range {p1 .. p1}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v4

    sub-long v4, v4, v18

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 661
    .local v12, "max":J
    move-wide/from16 v20, v12

    .line 662
    .local v20, "remaining":J
    move-wide/from16 v6, v18

    .line 663
    .local v6, "p":J
    :goto_27
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-lez v4, :cond_71

    .line 664
    const-wide/32 v4, 0x800000

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 666
    .local v8, "size":J
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Lsun/nio/ch/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_3d
    .catchall {:try_start_13 .. :try_end_3d} :catchall_62

    move-result-object v10

    .line 668
    .local v10, "bb":Ljava/nio/MappedByteBuffer;
    :try_start_3e
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    move-result v4

    int-to-long v14, v4

    .line 669
    .local v14, "n":J
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_65

    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-gtz v4, :cond_65

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_57} :catch_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_5d

    .line 673
    .end local v14    # "n":J
    :catch_57
    move-exception v11

    .line 675
    .local v11, "ioe":Ljava/io/IOException;
    cmp-long v4, v20, v12

    if-nez v4, :cond_6e

    .line 676
    :try_start_5c
    throw v11
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    .line 678
    .end local v11    # "ioe":Ljava/io/IOException;
    :catchall_5d
    move-exception v4

    .line 679
    :try_start_5e
    invoke-static {v10}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 678
    throw v4
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_62

    .line 657
    .end local v6    # "p":J
    .end local v8    # "size":J
    .end local v10    # "bb":Ljava/nio/MappedByteBuffer;
    .end local v12    # "max":J
    .end local v18    # "pos":J
    .end local v20    # "remaining":J
    :catchall_62
    move-exception v4

    monitor-exit v22

    throw v4

    .line 670
    .restart local v6    # "p":J
    .restart local v8    # "size":J
    .restart local v10    # "bb":Ljava/nio/MappedByteBuffer;
    .restart local v12    # "max":J
    .restart local v14    # "n":J
    .restart local v18    # "pos":J
    .restart local v20    # "remaining":J
    :cond_65
    add-long/2addr v6, v14

    .line 671
    add-long p2, p2, v14

    .line 672
    sub-long v20, v20, v14

    .line 679
    :try_start_6a
    invoke-static {v10}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    goto :goto_27

    .end local v14    # "n":J
    .restart local v11    # "ioe":Ljava/io/IOException;
    :cond_6e
    invoke-static {v10}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 682
    .end local v8    # "size":J
    .end local v10    # "bb":Ljava/nio/MappedByteBuffer;
    .end local v11    # "ioe":Ljava/io/IOException;
    :cond_71
    sub-long v16, v12, v20

    .line 683
    .local v16, "nwritten":J
    add-long v4, v18, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_7a
    .catchall {:try_start_6a .. :try_end_7a} :catchall_62

    monitor-exit v22

    .line 684
    return-wide v16
.end method

.method private native transferTo0(Ljava/io/FileDescriptor;JJLjava/io/FileDescriptor;)J
.end method

.method private transferToArbitraryChannel(JILjava/nio/channels/WritableByteChannel;)J
    .registers 20
    .param p1, "position"    # J
    .param p3, "icount"    # I
    .param p4, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    const/16 v11, 0x2000

    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 586
    .local v3, "c":I
    invoke-static {v3}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 587
    .local v2, "bb":Ljava/nio/ByteBuffer;
    const-wide/16 v8, 0x0

    .line 588
    .local v8, "tw":J
    move-wide/from16 v6, p1

    .line 590
    .local v6, "pos":J
    :try_start_10
    invoke-static {v2}, Lsun/nio/ch/Util;->erase(Ljava/nio/ByteBuffer;)V

    .line 591
    :goto_13
    move/from16 v0, p3

    int-to-long v12, v0

    cmp-long v11, v8, v12

    if-gez v11, :cond_2e

    .line 592
    move/from16 v0, p3

    int-to-long v12, v0

    sub-long/2addr v12, v8

    long-to-int v11, v12

    const/16 v12, 0x2000

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 593
    invoke-virtual {p0, v2, v6, v7}, Lsun/nio/ch/FileChannelImpl;->read(Ljava/nio/ByteBuffer;J)I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2b} :catch_45
    .catchall {:try_start_10 .. :try_end_2b} :catchall_51

    move-result v4

    .line 594
    .local v4, "nr":I
    if-gtz v4, :cond_32

    .line 612
    .end local v4    # "nr":I
    :cond_2e
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 606
    return-wide v8

    .line 596
    .restart local v4    # "nr":I
    :cond_32
    :try_start_32
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 599
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 600
    .local v5, "nw":I
    int-to-long v12, v5

    add-long/2addr v8, v12

    .line 601
    if-ne v5, v4, :cond_2e

    .line 603
    int-to-long v12, v5

    add-long/2addr v6, v12

    .line 604
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_44} :catch_45
    .catchall {:try_start_32 .. :try_end_44} :catchall_51

    goto :goto_13

    .line 607
    .end local v4    # "nr":I
    .end local v5    # "nw":I
    :catch_45
    move-exception v10

    .line 608
    .local v10, "x":Ljava/io/IOException;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-lez v11, :cond_50

    .line 612
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 609
    return-wide v8

    .line 610
    :cond_50
    :try_start_50
    throw v10
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    .line 611
    .end local v10    # "x":Ljava/io/IOException;
    :catchall_51
    move-exception v11

    .line 612
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 611
    throw v11
.end method

.method private transferToDirectly(JILjava/nio/channels/WritableByteChannel;)J
    .registers 20
    .param p1, "position"    # J
    .param p3, "icount"    # I
    .param p4, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z

    if-nez v3, :cond_7

    .line 486
    const-wide/16 v4, -0x4

    return-wide v4

    .line 488
    :cond_7
    const/4 v8, 0x0

    .line 489
    .local v8, "targetFD":Ljava/io/FileDescriptor;
    move-object/from16 v0, p4

    instance-of v3, v0, Lsun/nio/ch/FileChannelImpl;

    if-eqz v3, :cond_20

    .line 490
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z

    if-nez v3, :cond_15

    .line 491
    const-wide/16 v4, -0x6

    return-wide v4

    :cond_15
    move-object/from16 v3, p4

    .line 492
    check-cast v3, Lsun/nio/ch/FileChannelImpl;

    iget-object v8, v3, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 507
    .end local v8    # "targetFD":Ljava/io/FileDescriptor;
    :cond_1b
    :goto_1b
    if-nez v8, :cond_4d

    .line 508
    const-wide/16 v4, -0x4

    return-wide v4

    .line 493
    .restart local v8    # "targetFD":Ljava/io/FileDescriptor;
    :cond_20
    move-object/from16 v0, p4

    instance-of v3, v0, Lsun/nio/ch/SelChImpl;

    if-eqz v3, :cond_1b

    .line 495
    move-object/from16 v0, p4

    instance-of v3, v0, Lsun/nio/ch/SinkChannelImpl;

    if-eqz v3, :cond_35

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_35

    .line 496
    const-wide/16 v4, -0x6

    return-wide v4

    :cond_35
    move-object/from16 v2, p4

    .line 500
    check-cast v2, Ljava/nio/channels/SelectableChannel;

    .line 501
    .local v2, "sc":Ljava/nio/channels/SelectableChannel;
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v3, v2}, Lsun/nio/ch/FileDispatcher;->canTransferToDirectly(Ljava/nio/channels/SelectableChannel;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 502
    const-wide/16 v4, -0x6

    return-wide v4

    :cond_44
    move-object/from16 v3, p4

    .line 504
    check-cast v3, Lsun/nio/ch/SelChImpl;

    invoke-interface {v3}, Lsun/nio/ch/SelChImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    .local v8, "targetFD":Ljava/io/FileDescriptor;
    goto :goto_1b

    .line 509
    .end local v2    # "sc":Ljava/nio/channels/SelectableChannel;
    .end local v8    # "targetFD":Ljava/io/FileDescriptor;
    :cond_4d
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v12

    .line 510
    .local v12, "thisFDVal":I
    invoke-static {v8}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v9

    .line 511
    .local v9, "targetFDVal":I
    if-ne v12, v9, :cond_5c

    .line 512
    const-wide/16 v4, -0x4

    return-wide v4

    .line 514
    :cond_5c
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v3}, Lsun/nio/ch/FileDispatcher;->transferToDirectlyNeedsPositionLock()Z

    move-result v3

    if-eqz v3, :cond_83

    .line 515
    iget-object v13, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v13

    .line 516
    :try_start_67
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->position()J
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_80

    move-result-wide v10

    .local v10, "pos":J
    move-object v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    .line 518
    :try_start_72
    invoke-direct/range {v3 .. v8}, Lsun/nio/ch/FileChannelImpl;->transferToDirectlyInternal(JILjava/nio/channels/WritableByteChannel;Ljava/io/FileDescriptor;)J
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_7b

    move-result-wide v4

    .line 521
    :try_start_76
    invoke-virtual {p0, v10, v11}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_80

    monitor-exit v13

    .line 518
    return-wide v4

    .line 520
    :catchall_7b
    move-exception v3

    .line 521
    :try_start_7c
    invoke-virtual {p0, v10, v11}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    .line 520
    throw v3
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_80

    .line 515
    .end local v10    # "pos":J
    :catchall_80
    move-exception v3

    monitor-exit v13

    throw v3

    :cond_83
    move-object v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    .line 525
    invoke-direct/range {v3 .. v8}, Lsun/nio/ch/FileChannelImpl;->transferToDirectlyInternal(JILjava/nio/channels/WritableByteChannel;Ljava/io/FileDescriptor;)J

    move-result-wide v4

    return-wide v4
.end method

.method private transferToDirectlyInternal(JILjava/nio/channels/WritableByteChannel;Ljava/io/FileDescriptor;)J
    .registers 17
    .param p1, "position"    # J
    .param p3, "icount"    # I
    .param p4, "target"    # Ljava/nio/channels/WritableByteChannel;
    .param p5, "targetFD"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v0}, Lsun/nio/ch/FileDispatcher;->transferToDirectlyNeedsPositionLock()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 449
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 448
    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 451
    :cond_1c
    const-wide/16 v8, -0x1

    .line 452
    .local v8, "n":J
    const/4 v7, -0x1

    .line 454
    .local v7, "ti":I
    :try_start_1f
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 455
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v7

    .line 456
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_b3

    move-result v0

    if-nez v0, :cond_3a

    .line 457
    const-wide/16 v0, -0x1

    .line 476
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v7}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 477
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 457
    return-wide v0

    .line 458
    :cond_3a
    :try_start_3a
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 460
    :cond_41
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    int-to-long v4, p3

    move-object v0, p0

    move-wide v2, p1

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileChannelImpl;->transferTo0(Ljava/io/FileDescriptor;JJLjava/io/FileDescriptor;)J

    move-result-wide v8

    .line 461
    const-wide/16 v0, -0x3

    cmp-long v0, v8, v0

    if-nez v0, :cond_58

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_41

    .line 462
    :cond_58
    const-wide/16 v0, -0x6

    cmp-long v0, v8, v0

    if-nez v0, :cond_80

    .line 463
    instance-of v0, p4, Lsun/nio/ch/SinkChannelImpl;

    if-eqz v0, :cond_65

    .line 464
    const/4 v0, 0x0

    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    .line 465
    :cond_65
    instance-of v0, p4, Lsun/nio/ch/FileChannelImpl;

    if-eqz v0, :cond_6c

    .line 466
    const/4 v0, 0x0

    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z
    :try_end_6c
    .catchall {:try_start_3a .. :try_end_6c} :catchall_b3

    .line 467
    :cond_6c
    const-wide/16 v2, -0x6

    .line 476
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v7}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 477
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-lez v0, :cond_7e

    const/4 v0, 0x1

    :goto_7a
    invoke-virtual {p0, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 467
    return-wide v2

    .line 477
    :cond_7e
    const/4 v0, 0x0

    goto :goto_7a

    .line 469
    :cond_80
    const-wide/16 v0, -0x4

    cmp-long v0, v8, v0

    if-nez v0, :cond_9d

    .line 471
    const/4 v0, 0x0

    :try_start_87
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z
    :try_end_89
    .catchall {:try_start_87 .. :try_end_89} :catchall_b3

    .line 472
    const-wide/16 v2, -0x4

    .line 476
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v7}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 477
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-lez v0, :cond_9b

    const/4 v0, 0x1

    :goto_97
    invoke-virtual {p0, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 472
    return-wide v2

    .line 477
    :cond_9b
    const/4 v0, 0x0

    goto :goto_97

    .line 474
    :cond_9d
    :try_start_9d
    invoke-static {v8, v9}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_b3

    move-result-wide v2

    .line 476
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v7}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 477
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-lez v0, :cond_b1

    const/4 v0, 0x1

    :goto_ad
    invoke-virtual {p0, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 474
    return-wide v2

    .line 477
    :cond_b1
    const/4 v0, 0x0

    goto :goto_ad

    .line 475
    :catchall_b3
    move-exception v0

    .line 476
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v7}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 477
    const-wide/16 v2, -0x1

    cmp-long v1, v8, v2

    if-lez v1, :cond_c4

    const/4 v1, 0x1

    :goto_c0
    invoke-virtual {p0, v1}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 475
    throw v0

    .line 477
    :cond_c4
    const/4 v1, 0x0

    goto :goto_c0
.end method

.method private transferToTrustedChannel(JJLjava/nio/channels/WritableByteChannel;)J
    .registers 23
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    move-object/from16 v0, p5

    instance-of v11, v0, Lsun/nio/ch/SelChImpl;

    .line 537
    .local v11, "isSelChImpl":Z
    move-object/from16 v0, p5

    instance-of v2, v0, Lsun/nio/ch/FileChannelImpl;

    if-nez v2, :cond_10

    move v2, v11

    :goto_b
    if-nez v2, :cond_12

    .line 538
    const-wide/16 v2, -0x4

    return-wide v2

    .line 537
    :cond_10
    const/4 v2, 0x1

    goto :goto_b

    .line 541
    :cond_12
    move-wide/from16 v14, p3

    .line 542
    .local v14, "remaining":J
    :goto_14
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_5a

    .line 543
    const-wide/32 v2, 0x800000

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 545
    .local v6, "size":J
    :try_start_21
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lsun/nio/ch/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_2a
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_21 .. :try_end_2a} :catch_42
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2a} :catch_70

    move-result-object v8

    .line 548
    .local v8, "dbb":Ljava/nio/MappedByteBuffer;
    :try_start_2b
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 549
    .local v12, "n":I
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_53

    if-gez v12, :cond_53

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_3d

    .line 557
    .end local v12    # "n":I
    :catchall_3d
    move-exception v2

    .line 558
    :try_start_3e
    invoke-static {v8}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 557
    throw v2
    :try_end_42
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3e .. :try_end_42} :catch_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_70

    .line 560
    .end local v8    # "dbb":Ljava/nio/MappedByteBuffer;
    :catch_42
    move-exception v9

    .line 563
    .local v9, "e":Ljava/nio/channels/ClosedByInterruptException;
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_76

    invoke-interface/range {p5 .. p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_76

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 550
    .end local v9    # "e":Ljava/nio/channels/ClosedByInterruptException;
    .restart local v8    # "dbb":Ljava/nio/MappedByteBuffer;
    .restart local v12    # "n":I
    :cond_53
    int-to-long v2, v12

    sub-long/2addr v14, v2

    .line 551
    if-eqz v11, :cond_5d

    .line 558
    :try_start_57
    invoke-static {v8}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V
    :try_end_5a
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_57 .. :try_end_5a} :catch_42
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_70

    .line 577
    .end local v6    # "size":J
    .end local v8    # "dbb":Ljava/nio/MappedByteBuffer;
    .end local v12    # "n":I
    :cond_5a
    sub-long v2, p3, v14

    return-wide v2

    .line 555
    .restart local v6    # "size":J
    .restart local v8    # "dbb":Ljava/nio/MappedByteBuffer;
    .restart local v12    # "n":I
    :cond_5d
    :try_start_5d
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_69

    if-gtz v12, :cond_69

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_3d

    .line 556
    :cond_69
    int-to-long v2, v12

    add-long p1, p1, v2

    .line 558
    :try_start_6c
    invoke-static {v8}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V
    :try_end_6f
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_6c .. :try_end_6f} :catch_42
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_14

    .line 570
    .end local v8    # "dbb":Ljava/nio/MappedByteBuffer;
    .end local v12    # "n":I
    :catch_70
    move-exception v10

    .line 572
    .local v10, "ioe":Ljava/io/IOException;
    cmp-long v2, v14, p3

    if-nez v2, :cond_5a

    .line 573
    throw v10

    .line 565
    .end local v10    # "ioe":Ljava/io/IOException;
    .restart local v9    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :cond_76
    :try_start_76
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->close()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_79} :catch_7a

    .line 569
    :goto_79
    throw v9

    .line 566
    :catch_7a
    move-exception v13

    .line 567
    .local v13, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {v9, v13}, Ljava/nio/channels/ClosedByInterruptException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_79
.end method

.method private static unmap(Ljava/nio/MappedByteBuffer;)V
    .registers 2
    .param p0, "bb"    # Ljava/nio/MappedByteBuffer;

    .prologue
    .line 879
    check-cast p0, Lsun/nio/ch/DirectBuffer;

    .end local p0    # "bb":Ljava/nio/MappedByteBuffer;
    invoke-interface {p0}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v0

    .line 880
    .local v0, "cl":Lsun/misc/Cleaner;
    if-eqz v0, :cond_b

    .line 881
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 882
    :cond_b
    return-void
.end method

.method private static native unmap0(JJ)I
.end method

.method private writeInternal(Ljava/nio/ByteBuffer;J)I
    .registers 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 801
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_1e

    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v4}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 802
    :cond_1e
    const/4 v0, 0x0

    .line 803
    .local v0, "n":I
    const/4 v1, -0x1

    .line 805
    .local v1, "ti":I
    :try_start_20
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 806
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    .line 807
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_7b

    move-result v4

    if-nez v4, :cond_49

    .line 808
    const/4 v2, -0x1

    .line 814
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 815
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 816
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_48

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_48

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 808
    :cond_48
    return v2

    .line 810
    :cond_49
    :try_start_49
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v4, p1, p2, p3, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 811
    const/4 v4, -0x3

    if-ne v0, v4, :cond_5a

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_49

    .line 812
    :cond_5a
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_5d
    .catchall {:try_start_49 .. :try_end_5d} :catchall_7b

    move-result v4

    .line 814
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 815
    if-lez v0, :cond_78

    :goto_65
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 816
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_7a

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_7a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_78
    move v2, v3

    .line 815
    goto :goto_65

    .line 812
    :cond_7a
    return v4

    .line 813
    :catchall_7b
    move-exception v4

    .line 814
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 815
    if-lez v0, :cond_96

    :goto_83
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 816
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_98

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_98

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_96
    move v2, v3

    .line 815
    goto :goto_83

    .line 813
    :cond_98
    throw v4
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 165
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 166
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 168
    :cond_9
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 170
    invoke-super {p0}, Ljava/nio/channels/FileChannel;->finalize()V

    .line 172
    return-void

    .line 169
    :catchall_10
    move-exception v0

    .line 170
    invoke-super {p0}, Ljava/nio/channels/FileChannel;->finalize()V

    .line 169
    throw v0
.end method

.method public force(Z)V
    .registers 9
    .param p1, "metaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 410
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 411
    const/4 v0, -0x1

    .line 412
    .local v0, "rv":I
    const/4 v1, -0x1

    .line 414
    .local v1, "ti":I
    :try_start_8
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 415
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    .line 416
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_5d

    move-result v4

    if-nez v4, :cond_30

    .line 422
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 423
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 424
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_2f

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_2f

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 417
    :cond_2f
    return-void

    .line 419
    :cond_30
    :try_start_30
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v4, v5, p1}, Lsun/nio/ch/FileDispatcher;->force(Ljava/io/FileDescriptor;Z)I

    move-result v0

    .line 420
    const/4 v4, -0x3

    if-ne v0, v4, :cond_41

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_5d

    move-result v4

    if-nez v4, :cond_30

    .line 422
    :cond_41
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 423
    if-le v0, v6, :cond_5b

    :goto_48
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 424
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_7b

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_7b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_5b
    move v2, v3

    .line 423
    goto :goto_48

    .line 421
    :catchall_5d
    move-exception v4

    .line 422
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 423
    if-le v0, v6, :cond_78

    :goto_65
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 424
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_7a

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_7a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_78
    move v2, v3

    .line 423
    goto :goto_65

    .line 421
    :cond_7a
    throw v4

    .line 426
    :cond_7b
    return-void
.end method

.method protected implCloseChannel()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    .line 135
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-eqz v2, :cond_41

    .line 136
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v2}, Lsun/nio/ch/FileLockTable;->removeAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "fl$iterator":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/channels/FileLock;

    .line 137
    .local v8, "fl":Ljava/nio/channels/FileLock;
    monitor-enter v8

    .line 138
    :try_start_20
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 139
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lsun/nio/ch/FileDispatcher;->release(Ljava/io/FileDescriptor;JJ)V

    .line 140
    move-object v0, v8

    check-cast v0, Lsun/nio/ch/FileLockImpl;

    move-object v2, v0

    invoke-virtual {v2}, Lsun/nio/ch/FileLockImpl;->invalidate()V
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_3e

    :cond_3c
    monitor-exit v8

    goto :goto_13

    .line 137
    :catchall_3e
    move-exception v2

    monitor-exit v8

    throw v2

    .line 147
    .end local v8    # "fl":Ljava/nio/channels/FileLock;
    .end local v9    # "fl$iterator":Ljava/util/Iterator;
    :cond_41
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2}, Lsun/nio/ch/NativeThreadSet;->signalAndWait()V

    .line 149
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    if-eqz v2, :cond_52

    .line 156
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 161
    :goto_51
    return-void

    .line 158
    :cond_52
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3}, Lsun/nio/ch/FileDispatcher;->close(Ljava/io/FileDescriptor;)V

    goto :goto_51
.end method

.method public lock(JJZ)Ljava/nio/channels/FileLock;
    .registers 21
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1073
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1074
    if-eqz p5, :cond_11

    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_11

    .line 1075
    new-instance v1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v1

    .line 1076
    :cond_11
    if-nez p5, :cond_1f

    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    .line 1077
    new-instance v1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v1

    .line 1078
    :cond_1f
    new-instance v0, Lsun/nio/ch/FileLockImpl;

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 1079
    .local v0, "fli":Lsun/nio/ch/FileLockImpl;
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->fileLockTable()Lsun/nio/ch/FileLockTable;

    move-result-object v11

    .line 1080
    .local v11, "flt":Lsun/nio/ch/FileLockTable;
    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->add(Ljava/nio/channels/FileLock;)V

    .line 1081
    const/4 v9, 0x0

    .line 1082
    .local v9, "completed":Z
    const/4 v13, -0x1

    .line 1084
    .local v13, "ti":I
    :try_start_34
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 1085
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v13

    .line 1086
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_86

    move-result v1

    if-nez v1, :cond_59

    .line 1087
    const/4 v1, 0x0

    .line 1103
    if-nez v9, :cond_49

    .line 1104
    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1105
    :cond_49
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1107
    :try_start_4e
    invoke-virtual {p0, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_51
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4e .. :try_end_51} :catch_52

    .line 1087
    return-object v1

    .line 1108
    :catch_52
    move-exception v10

    .line 1109
    .local v10, "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v1

    .line 1090
    .end local v10    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :cond_59
    :try_start_59
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I

    move-result v12

    .line 1091
    .local v12, "n":I
    const/4 v1, 0x2

    if-ne v12, v1, :cond_71

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_59

    .line 1092
    :cond_71
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 1093
    const/4 v1, 0x1

    if-ne v12, v1, :cond_a4

    .line 1094
    sget-boolean v1, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_95

    if-nez p5, :cond_95

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_86
    .catchall {:try_start_59 .. :try_end_86} :catchall_86

    .line 1102
    .end local v12    # "n":I
    :catchall_86
    move-exception v1

    .line 1103
    if-nez v9, :cond_8c

    .line 1104
    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1105
    :cond_8c
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1107
    :try_start_91
    invoke-virtual {p0, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_94
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_91 .. :try_end_94} :catch_ba

    .line 1102
    throw v1

    .line 1095
    .restart local v12    # "n":I
    :cond_95
    :try_start_95
    new-instance v2, Lsun/nio/ch/FileLockImpl;

    .line 1096
    const/4 v8, 0x0

    move-object v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    .line 1095
    invoke-direct/range {v2 .. v8}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 1097
    .local v2, "fli2":Lsun/nio/ch/FileLockImpl;
    invoke-virtual {v11, v0, v2}, Lsun/nio/ch/FileLockTable;->replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    :try_end_a3
    .catchall {:try_start_95 .. :try_end_a3} :catchall_86

    .line 1098
    move-object v0, v2

    .line 1100
    .end local v2    # "fli2":Lsun/nio/ch/FileLockImpl;
    :cond_a4
    const/4 v9, 0x1

    .line 1103
    :cond_a5
    if-nez v9, :cond_aa

    .line 1104
    invoke-virtual {v11, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1105
    :cond_aa
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v13}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1107
    :try_start_af
    invoke-virtual {p0, v9}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_b2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_af .. :try_end_b2} :catch_b3

    .line 1112
    return-object v0

    .line 1108
    :catch_b3
    move-exception v10

    .line 1109
    .restart local v10    # "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v1

    .line 1108
    .end local v10    # "e":Ljava/nio/channels/ClosedByInterruptException;
    .end local v12    # "n":I
    :catch_ba
    move-exception v10

    .line 1109
    .restart local v10    # "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v1
.end method

.method public map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .registers 46
    .param p1, "mode"    # Ljava/nio/channels/FileChannel$MapMode;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 892
    if-nez p1, :cond_e

    .line 893
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Mode is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 894
    :cond_e
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_1d

    .line 895
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Negative position"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 896
    :cond_1d
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gez v2, :cond_2c

    .line 897
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Negative size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 898
    :cond_2c
    add-long v2, p2, p4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3d

    .line 899
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Position + size overflow"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 900
    :cond_3d
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p4, v2

    if-lez v2, :cond_4d

    .line 901
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Size exceeds Integer.MAX_VALUE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 903
    :cond_4d
    const/4 v9, -0x1

    .line 904
    .local v9, "imode":I
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_61

    .line 905
    const/4 v9, 0x0

    .line 910
    :cond_55
    :goto_55
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_71

    if-gez v9, :cond_71

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 906
    :cond_61
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_69

    .line 907
    const/4 v9, 0x1

    goto :goto_55

    .line 908
    :cond_69
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_55

    .line 909
    const/4 v9, 0x2

    goto :goto_55

    .line 911
    :cond_71
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_85

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_85

    .line 912
    new-instance v2, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v2

    .line 913
    :cond_85
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v2, :cond_91

    .line 914
    new-instance v2, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v2

    .line 916
    :cond_91
    const-wide/16 v16, -0x1

    .line 917
    .local v16, "addr":J
    const/16 v35, -0x1

    .line 919
    .local v35, "ti":I
    :try_start_95
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v35

    .line 921
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_a3
    .catchall {:try_start_95 .. :try_end_a3} :catchall_140

    move-result v2

    if-nez v2, :cond_ba

    .line 922
    const/4 v2, 0x0

    .line 1014
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1015
    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 922
    return-object v2

    .line 926
    :cond_ba
    :try_start_ba
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v30

    .line 927
    .local v30, "filesize":J
    const-wide/16 v2, -0x3

    cmp-long v2, v30, v2

    if-nez v2, :cond_d2

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 928
    :cond_d2
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_d5
    .catchall {:try_start_ba .. :try_end_d5} :catchall_140

    move-result v2

    if-nez v2, :cond_ec

    .line 929
    const/4 v2, 0x0

    .line 1014
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1015
    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 929
    return-object v2

    .line 931
    :cond_ec
    add-long v2, p2, p4

    cmp-long v2, v30, v2

    if-gez v2, :cond_154

    .line 940
    const/16 v34, 0x0

    .line 945
    .local v34, "rv":I
    :cond_f4
    :try_start_f4
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    add-long v4, p2, p4

    invoke-virtual {v2, v3, v4, v5}, Lsun/nio/ch/FileDispatcher;->truncate(Ljava/io/FileDescriptor;J)I
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_101} :catch_127
    .catchall {:try_start_f4 .. :try_end_101} :catchall_140

    move-result v34

    .line 961
    const/4 v2, -0x3

    move/from16 v0, v34

    if-ne v0, v2, :cond_10d

    :try_start_107
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_f4

    .line 962
    :cond_10d
    :goto_10d
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_110
    .catchall {:try_start_107 .. :try_end_110} :catchall_140

    move-result v2

    if-nez v2, :cond_154

    .line 963
    const/4 v2, 0x0

    .line 1014
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1015
    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 963
    return-object v2

    .line 946
    :catch_127
    move-exception v33

    .line 952
    .local v33, "r":Ljava/io/IOException;
    :try_start_128
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v2, v3}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v2

    iget v2, v2, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 953
    throw v33
    :try_end_13b
    .catch Landroid/system/ErrnoException; {:try_start_128 .. :try_end_13b} :catch_13b
    .catchall {:try_start_128 .. :try_end_13b} :catchall_140

    .line 955
    :catch_13b
    move-exception v14

    .line 956
    .local v14, "e":Landroid/system/ErrnoException;
    :try_start_13c
    invoke-virtual {v14}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_13f
    .catchall {:try_start_13c .. :try_end_13f} :catchall_140

    goto :goto_10d

    .line 1013
    .end local v14    # "e":Landroid/system/ErrnoException;
    .end local v30    # "filesize":J
    .end local v33    # "r":Ljava/io/IOException;
    .end local v34    # "rv":I
    :catchall_140
    move-exception v2

    .line 1014
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1015
    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 1013
    throw v2

    .line 965
    .restart local v30    # "filesize":J
    :cond_154
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_188

    .line 966
    const-wide/16 v16, 0x0

    .line 968
    :try_start_15c
    new-instance v6, Ljava/io/FileDescriptor;

    invoke-direct {v6}, Ljava/io/FileDescriptor;-><init>()V

    .line 969
    .local v6, "dummy":Ljava/io/FileDescriptor;
    new-instance v2, Ljava/nio/DirectByteBuffer;

    const-wide/16 v4, 0x0

    .line 970
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v3, :cond_16d

    if-nez v9, :cond_186

    :cond_16d
    const/4 v8, 0x1

    .line 969
    :goto_16e
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_173
    .catchall {:try_start_15c .. :try_end_173} :catchall_140

    .line 1014
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1015
    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 969
    return-object v2

    .line 970
    :cond_186
    const/4 v8, 0x0

    goto :goto_16e

    .line 973
    .end local v6    # "dummy":Ljava/io/FileDescriptor;
    :cond_188
    :try_start_188
    sget-wide v2, Lsun/nio/ch/FileChannelImpl;->allocationGranularity:J

    rem-long v2, p2, v2
    :try_end_18c
    .catchall {:try_start_188 .. :try_end_18c} :catchall_140

    long-to-int v0, v2

    move/from16 v32, v0

    .line 974
    .local v32, "pagePosition":I
    move/from16 v0, v32

    int-to-long v2, v0

    sub-long v10, p2, v2

    .line 975
    .local v10, "mapPosition":J
    move/from16 v0, v32

    int-to-long v2, v0

    add-long v12, p4, v2

    .line 978
    .local v12, "mapSize":J
    :try_start_199
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    move-object/from16 v8, p0

    .line 979
    invoke-direct/range {v8 .. v13}, Lsun/nio/ch/FileChannelImpl;->map0(IJJ)J
    :try_end_1a5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_199 .. :try_end_1a5} :catch_1c2
    .catchall {:try_start_199 .. :try_end_1a5} :catchall_140

    move-result-wide v16

    .line 1001
    :goto_1a6
    :try_start_1a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3}, Lsun/nio/ch/FileDispatcher;->duplicateForMapping(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_1b1
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1b1} :catch_1e7
    .catchall {:try_start_1a6 .. :try_end_1b1} :catchall_140

    move-result-object v21

    .line 1007
    .local v21, "mfd":Ljava/io/FileDescriptor;
    :try_start_1b2
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_1ee

    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v2

    if-nez v2, :cond_1ee

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 980
    .end local v21    # "mfd":Ljava/io/FileDescriptor;
    :catch_1c2
    move-exception v36

    .line 983
    .local v36, "x":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1c6
    .catchall {:try_start_1b2 .. :try_end_1c6} :catchall_140

    .line 985
    const-wide/16 v2, 0x64

    :try_start_1c8
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1cb
    .catch Ljava/lang/InterruptedException; {:try_start_1c8 .. :try_end_1cb} :catch_1d2
    .catchall {:try_start_1c8 .. :try_end_1cb} :catchall_140

    :goto_1cb
    move-object/from16 v8, p0

    .line 990
    :try_start_1cd
    invoke-direct/range {v8 .. v13}, Lsun/nio/ch/FileChannelImpl;->map0(IJJ)J
    :try_end_1d0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1cd .. :try_end_1d0} :catch_1db
    .catchall {:try_start_1cd .. :try_end_1d0} :catchall_140

    move-result-wide v16

    goto :goto_1a6

    .line 986
    :catch_1d2
    move-exception v37

    .line 987
    .local v37, "y":Ljava/lang/InterruptedException;
    :try_start_1d3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1cb

    .line 991
    .end local v37    # "y":Ljava/lang/InterruptedException;
    :catch_1db
    move-exception v38

    .line 993
    .local v38, "y":Ljava/lang/OutOfMemoryError;
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Map failed"

    move-object/from16 v0, v38

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1002
    .end local v36    # "x":Ljava/lang/OutOfMemoryError;
    .end local v38    # "y":Ljava/lang/OutOfMemoryError;
    :catch_1e7
    move-exception v29

    .line 1003
    .local v29, "ioe":Ljava/io/IOException;
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12, v13}, Lsun/nio/ch/FileChannelImpl;->unmap0(JJ)I

    .line 1004
    throw v29

    .line 1008
    .end local v29    # "ioe":Ljava/io/IOException;
    .restart local v21    # "mfd":Ljava/io/FileDescriptor;
    :cond_1ee
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_202

    sget-wide v2, Lsun/nio/ch/FileChannelImpl;->allocationGranularity:J

    rem-long v2, v16, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_202

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1009
    :cond_202
    move-wide/from16 v0, p4

    long-to-int v0, v0

    move/from16 v20, v0

    .line 1010
    .local v20, "isize":I
    new-instance v15, Lsun/nio/ch/FileChannelImpl$Unmapper;

    const/16 v22, 0x0

    move-wide/from16 v18, v12

    invoke-direct/range {v15 .. v22}, Lsun/nio/ch/FileChannelImpl$Unmapper;-><init>(JJILjava/io/FileDescriptor;Lsun/nio/ch/FileChannelImpl$Unmapper;)V

    .line 1011
    .local v15, "um":Lsun/nio/ch/FileChannelImpl$Unmapper;
    new-instance v22, Ljava/nio/DirectByteBuffer;

    move/from16 v0, v32

    int-to-long v2, v0

    add-long v24, v16, v2

    .line 1012
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v2, :cond_21f

    if-nez v9, :cond_23d

    :cond_21f
    const/16 v28, 0x1

    :goto_221
    move/from16 v23, v20

    move-object/from16 v26, v21

    move-object/from16 v27, v15

    .line 1011
    invoke-direct/range {v22 .. v28}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_22a
    .catchall {:try_start_1d3 .. :try_end_22a} :catchall_140

    .line 1014
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1015
    invoke-static/range {v16 .. v17}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 1011
    return-object v22

    .line 1012
    :cond_23d
    const/16 v28, 0x0

    goto :goto_221
.end method

.method public position()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-wide/16 v10, -0x1

    const/4 v5, 0x0

    .line 281
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 282
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v6

    .line 283
    const-wide/16 v0, -0x1

    .line 284
    .local v0, "p":J
    const/4 v2, -0x1

    .line 286
    .local v2, "ti":I
    :try_start_d
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 287
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 288
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_8c

    move-result v3

    if-nez v3, :cond_3c

    .line 299
    :try_start_1c
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 300
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 301
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_38

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_38

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_35

    .line 282
    :catchall_35
    move-exception v3

    monitor-exit v6

    throw v3

    .line 289
    :cond_38
    const-wide/16 v4, 0x0

    monitor-exit v6

    return-wide v4

    .line 290
    :cond_3c
    :try_start_3c
    iget-boolean v3, p0, Lsun/nio/ch/FileChannelImpl;->append:Z

    if-eqz v3, :cond_47

    .line 291
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 295
    :cond_47
    iget-boolean v3, p0, Lsun/nio/ch/FileChannelImpl;->append:Z

    if-eqz v3, :cond_7f

    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v7}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    .line 296
    :goto_53
    const-wide/16 v8, -0x3

    cmp-long v3, v0, v8

    if-nez v3, :cond_5f

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_47

    .line 297
    :cond_5f
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_62
    .catchall {:try_start_3c .. :try_end_62} :catchall_8c

    move-result-wide v8

    .line 299
    :try_start_63
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 300
    cmp-long v3, v0, v10

    if-lez v3, :cond_88

    :goto_6c
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 301
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_8a

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_8a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_7f
    .catchall {:try_start_63 .. :try_end_7f} :catchall_35

    .line 295
    :cond_7f
    :try_start_7f
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v8, -0x1

    invoke-direct {p0, v3, v8, v9}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_8c

    move-result-wide v0

    goto :goto_53

    :cond_88
    move v4, v5

    .line 300
    goto :goto_6c

    :cond_8a
    monitor-exit v6

    .line 297
    return-wide v8

    .line 298
    :catchall_8c
    move-exception v3

    .line 299
    :try_start_8d
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 300
    cmp-long v7, v0, v10

    if-lez v7, :cond_a9

    :goto_96
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 301
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_ab

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v4

    if-nez v4, :cond_ab

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_a9
    move v4, v5

    .line 300
    goto :goto_96

    .line 298
    :cond_ab
    throw v3
    :try_end_ac
    .catchall {:try_start_8d .. :try_end_ac} :catchall_35
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .registers 16
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 307
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 308
    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-gez v3, :cond_14

    .line 309
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 310
    :cond_14
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v6

    .line 311
    const-wide/16 v0, -0x1

    .line 312
    .local v0, "p":J
    const/4 v2, -0x1

    .line 314
    .local v2, "ti":I
    :try_start_1a
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 315
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 316
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_80

    move-result v3

    if-nez v3, :cond_47

    .line 324
    :try_start_29
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 325
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 326
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_45

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_45

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_42
    .catchall {:try_start_29 .. :try_end_42} :catchall_42

    .line 310
    :catchall_42
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_45
    monitor-exit v6

    .line 317
    return-object v8

    .line 318
    :cond_47
    :try_start_47
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 320
    :cond_4e
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v3, p1, p2}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v0

    .line 321
    const-wide/16 v8, -0x3

    cmp-long v3, v0, v8

    if-nez v3, :cond_60

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_80

    move-result v3

    if-nez v3, :cond_4e

    .line 324
    :cond_60
    :try_start_60
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 325
    cmp-long v3, v0, v10

    if-lez v3, :cond_7c

    :goto_69
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 326
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_7e

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_7e

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_7c
    .catchall {:try_start_60 .. :try_end_7c} :catchall_42

    :cond_7c
    move v4, v5

    .line 325
    goto :goto_69

    :cond_7e
    monitor-exit v6

    .line 322
    return-object p0

    .line 323
    :catchall_80
    move-exception v3

    .line 324
    :try_start_81
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 325
    cmp-long v7, v0, v10

    if-lez v7, :cond_9d

    :goto_8a
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 326
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_9f

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v4

    if-nez v4, :cond_9f

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_9d
    move v4, v5

    .line 325
    goto :goto_8a

    .line 323
    :cond_9f
    throw v3
    :try_end_a0
    .catchall {:try_start_81 .. :try_end_a0} :catchall_42
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
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
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 175
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 176
    iget-boolean v2, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v2, :cond_f

    .line 177
    new-instance v2, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v2

    .line 178
    :cond_f
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v5

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "n":I
    const/4 v1, -0x1

    .line 182
    .local v1, "ti":I
    :try_start_14
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 183
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    .line 184
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_76

    move-result v2

    if-nez v2, :cond_41

    .line 191
    :try_start_23
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 192
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 193
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_3f

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_3f

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3c

    .line 178
    :catchall_3c
    move-exception v2

    monitor-exit v5

    throw v2

    :cond_3f
    monitor-exit v5

    .line 185
    return v4

    .line 187
    :cond_41
    :try_start_41
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v2, p1, v6, v7, v8}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 188
    const/4 v2, -0x3

    if-ne v0, v2, :cond_54

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_41

    .line 189
    :cond_54
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_57
    .catchall {:try_start_41 .. :try_end_57} :catchall_76

    move-result v2

    .line 191
    :try_start_58
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 192
    if-lez v0, :cond_72

    :goto_5f
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 193
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_74

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_74

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_72
    .catchall {:try_start_58 .. :try_end_72} :catchall_3c

    :cond_72
    move v3, v4

    .line 192
    goto :goto_5f

    :cond_74
    monitor-exit v5

    .line 189
    return v2

    .line 190
    :catchall_76
    move-exception v2

    .line 191
    :try_start_77
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 192
    if-lez v0, :cond_91

    :goto_7e
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 193
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_93

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_93

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_91
    move v3, v4

    .line 192
    goto :goto_7e

    .line 190
    :cond_93
    throw v2
    :try_end_94
    .catchall {:try_start_77 .. :try_end_94} :catchall_3c
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .registers 6
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 747
    if-nez p1, :cond_8

    .line 748
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 749
    :cond_8
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_17

    .line 750
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_17
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v0, :cond_21

    .line 752
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 753
    :cond_21
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 754
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v0}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 755
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 756
    :try_start_2f
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->readInternal(Ljava/nio/ByteBuffer;J)I
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_35

    move-result v1

    monitor-exit v0

    return v1

    .line 755
    :catchall_35
    move-exception v1

    monitor-exit v0

    throw v1

    .line 759
    :cond_38
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->readInternal(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 16
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    .line 201
    if-ltz p2, :cond_8

    if-gez p3, :cond_e

    .line 202
    :cond_8
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 201
    :cond_e
    array-length v3, p1

    sub-int/2addr v3, p3

    if-gt p2, v3, :cond_8

    .line 203
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 204
    iget-boolean v3, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v3, :cond_1f

    .line 205
    new-instance v3, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v3

    .line 206
    :cond_1f
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v6

    .line 207
    const-wide/16 v0, 0x0

    .line 208
    .local v0, "n":J
    const/4 v2, -0x1

    .line 210
    .local v2, "ti":I
    :try_start_25
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 211
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 212
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_8a

    move-result v3

    if-nez v3, :cond_52

    .line 219
    :try_start_34
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 220
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 221
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_50

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_50

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_4d
    .catchall {:try_start_34 .. :try_end_4d} :catchall_4d

    .line 206
    :catchall_4d
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_50
    monitor-exit v6

    .line 213
    return-wide v10

    .line 215
    :cond_52
    :try_start_52
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v3, p1, p2, p3, v7}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    .line 216
    const-wide/16 v8, -0x3

    cmp-long v3, v0, v8

    if-nez v3, :cond_66

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_52

    .line 217
    :cond_66
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_69
    .catchall {:try_start_52 .. :try_end_69} :catchall_8a

    move-result-wide v8

    .line 219
    :try_start_6a
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 220
    cmp-long v3, v0, v10

    if-lez v3, :cond_86

    :goto_73
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 221
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_88

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_88

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_86
    .catchall {:try_start_6a .. :try_end_86} :catchall_4d

    :cond_86
    move v4, v5

    .line 220
    goto :goto_73

    :cond_88
    monitor-exit v6

    .line 217
    return-wide v8

    .line 218
    :catchall_8a
    move-exception v3

    .line 219
    :try_start_8b
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 220
    cmp-long v7, v0, v10

    if-lez v7, :cond_a7

    :goto_94
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 221
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_a9

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v4

    if-nez v4, :cond_a9

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_a7
    move v4, v5

    .line 220
    goto :goto_94

    .line 218
    :cond_a9
    throw v3
    :try_end_aa
    .catchall {:try_start_8b .. :try_end_aa} :catchall_4d
.end method

.method release(Lsun/nio/ch/FileLockImpl;)V
    .registers 9
    .param p1, "fli"    # Lsun/nio/ch/FileLockImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1155
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v6

    .line 1157
    .local v6, "ti":I
    :try_start_6
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1158
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lsun/nio/ch/FileDispatcher;->release(Ljava/io/FileDescriptor;JJ)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_2b

    .line 1160
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v6}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1162
    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v0, :cond_32

    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v0, :cond_32

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1159
    :catchall_2b
    move-exception v0

    .line 1160
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v6}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1159
    throw v0

    .line 1163
    :cond_32
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v0, p1}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1164
    return-void
.end method

.method public size()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-wide/16 v10, -0x1

    const/4 v5, 0x0

    .line 332
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 333
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v6

    .line 334
    const-wide/16 v0, -0x1

    .line 335
    .local v0, "s":J
    const/4 v2, -0x1

    .line 337
    .local v2, "ti":I
    :try_start_d
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 338
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 339
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_72

    move-result v3

    if-nez v3, :cond_3a

    .line 346
    :try_start_1c
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 347
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 348
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_38

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_38

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_35

    .line 333
    :catchall_35
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_38
    monitor-exit v6

    .line 340
    return-wide v10

    .line 342
    :cond_3a
    :try_start_3a
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v7}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    .line 343
    const-wide/16 v8, -0x3

    cmp-long v3, v0, v8

    if-nez v3, :cond_4e

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 344
    :cond_4e
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_72

    move-result-wide v8

    .line 346
    :try_start_52
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 347
    cmp-long v3, v0, v10

    if-lez v3, :cond_6e

    :goto_5b
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 348
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_70

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_70

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_6e
    .catchall {:try_start_52 .. :try_end_6e} :catchall_35

    :cond_6e
    move v4, v5

    .line 347
    goto :goto_5b

    :cond_70
    monitor-exit v6

    .line 344
    return-wide v8

    .line 345
    :catchall_72
    move-exception v3

    .line 346
    :try_start_73
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 347
    cmp-long v7, v0, v10

    if-lez v7, :cond_8f

    :goto_7c
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 348
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_91

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v4

    if-nez v4, :cond_91

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_8f
    move v4, v5

    .line 347
    goto :goto_7c

    .line 345
    :cond_91
    throw v3
    :try_end_92
    .catchall {:try_start_73 .. :try_end_92} :catchall_35
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .registers 12
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 730
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 731
    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 732
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 733
    :cond_11
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-nez v0, :cond_1b

    .line 734
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 735
    :cond_1b
    cmp-long v0, p2, v2

    if-ltz v0, :cond_23

    cmp-long v0, p4, v2

    if-gez v0, :cond_29

    .line 736
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 737
    :cond_29
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_32

    .line 738
    return-wide v2

    .line 739
    :cond_32
    instance-of v0, p1, Lsun/nio/ch/FileChannelImpl;

    if-eqz v0, :cond_41

    move-object v1, p1

    .line 740
    check-cast v1, Lsun/nio/ch/FileChannelImpl;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/FileChannelImpl;->transferFromFileChannel(Lsun/nio/ch/FileChannelImpl;JJ)J

    move-result-wide v0

    return-wide v0

    .line 743
    :cond_41
    invoke-direct/range {p0 .. p5}, Lsun/nio/ch/FileChannelImpl;->transferFromArbitraryChannel(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .registers 23
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 620
    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 621
    invoke-interface/range {p5 .. p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v5

    if-nez v5, :cond_f

    .line 622
    new-instance v5, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v5}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v5

    .line 623
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-nez v5, :cond_1b

    .line 624
    new-instance v5, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v5}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v5

    .line 625
    :cond_1b
    move-object/from16 v0, p5

    instance-of v5, v0, Lsun/nio/ch/FileChannelImpl;

    if-eqz v5, :cond_31

    move-object/from16 v5, p5

    .line 626
    check-cast v5, Lsun/nio/ch/FileChannelImpl;

    iget-boolean v5, v5, Lsun/nio/ch/FileChannelImpl;->writable:Z

    xor-int/lit8 v5, v5, 0x1

    .line 625
    if-eqz v5, :cond_31

    .line 627
    new-instance v5, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v5}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v5

    .line 628
    :cond_31
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-ltz v5, :cond_3d

    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-gez v5, :cond_43

    .line 629
    :cond_3d
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 630
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v14

    .line 631
    .local v14, "sz":J
    cmp-long v5, p1, v14

    if-lez v5, :cond_4e

    .line 632
    const-wide/16 v6, 0x0

    return-wide v6

    .line 633
    :cond_4e
    const-wide/32 v6, 0x7fffffff

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v4, v6

    .line 634
    .local v4, "icount":I
    sub-long v6, v14, p1

    int-to-long v8, v4

    cmp-long v5, v6, v8

    if-gez v5, :cond_62

    .line 635
    sub-long v6, v14, p1

    long-to-int v4, v6

    .line 640
    :cond_62
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Lsun/nio/ch/FileChannelImpl;->transferToDirectly(JILjava/nio/channels/WritableByteChannel;)J

    move-result-wide v12

    .local v12, "n":J
    const-wide/16 v6, 0x0

    cmp-long v5, v12, v6

    if-ltz v5, :cond_73

    .line 641
    return-wide v12

    .line 644
    :cond_73
    int-to-long v8, v4

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lsun/nio/ch/FileChannelImpl;->transferToTrustedChannel(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v12

    const-wide/16 v6, 0x0

    cmp-long v5, v12, v6

    if-ltz v5, :cond_85

    .line 645
    return-wide v12

    .line 648
    :cond_85
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Lsun/nio/ch/FileChannelImpl;->transferToArbitraryChannel(JILjava/nio/channels/WritableByteChannel;)J

    move-result-wide v6

    return-wide v6
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .registers 16
    .param p1, "newSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 355
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-gez v6, :cond_12

    .line 356
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Negative size"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 357
    :cond_12
    iget-boolean v6, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-nez v6, :cond_1c

    .line 358
    new-instance v6, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v6}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v6

    .line 359
    :cond_1c
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v8

    .line 360
    const/4 v2, -0x1

    .line 361
    .local v2, "rv":I
    const-wide/16 v0, -0x1

    .line 362
    .local v0, "p":J
    const/4 v3, -0x1

    .line 364
    .local v3, "ti":I
    :try_start_23
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 365
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v3

    .line 366
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_cd

    move-result v6

    if-nez v6, :cond_51

    .line 402
    :try_start_32
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 403
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 404
    sget-boolean v6, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_4e

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v6

    if-nez v6, :cond_4e

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_4b
    .catchall {:try_start_32 .. :try_end_4b} :catchall_4b

    .line 359
    :catchall_4b
    move-exception v6

    monitor-exit v8

    throw v6

    .line 367
    :cond_4e
    const/4 v6, 0x0

    monitor-exit v8

    return-object v6

    .line 372
    :cond_51
    :try_start_51
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v6, v7}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v4

    .line 373
    .local v4, "size":J
    const-wide/16 v6, -0x3

    cmp-long v6, v4, v6

    if-nez v6, :cond_65

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v6

    if-nez v6, :cond_51

    .line 374
    :cond_65
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_68
    .catchall {:try_start_51 .. :try_end_68} :catchall_cd

    move-result v6

    if-nez v6, :cond_87

    .line 402
    :try_start_6b
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 403
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 404
    sget-boolean v6, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_84

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v6

    if-nez v6, :cond_84

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_84
    .catchall {:try_start_6b .. :try_end_84} :catchall_4b

    .line 375
    :cond_84
    const/4 v6, 0x0

    monitor-exit v8

    return-object v6

    .line 379
    :cond_87
    :try_start_87
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v10, -0x1

    invoke-direct {p0, v6, v10, v11}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v0

    .line 380
    const-wide/16 v6, -0x3

    cmp-long v6, v0, v6

    if-nez v6, :cond_9b

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v6

    if-nez v6, :cond_87

    .line 381
    :cond_9b
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_9e
    .catchall {:try_start_87 .. :try_end_9e} :catchall_cd

    move-result v6

    if-nez v6, :cond_bd

    .line 402
    :try_start_a1
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 403
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 404
    sget-boolean v6, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_ba

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v6

    if-nez v6, :cond_ba

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_ba
    .catchall {:try_start_a1 .. :try_end_ba} :catchall_4b

    .line 382
    :cond_ba
    const/4 v6, 0x0

    monitor-exit v8

    return-object v6

    .line 383
    :cond_bd
    :try_start_bd
    sget-boolean v6, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_ea

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_ea

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_cd
    .catchall {:try_start_bd .. :try_end_cd} :catchall_cd

    .line 401
    .end local v4    # "size":J
    :catchall_cd
    move-exception v6

    .line 402
    :try_start_ce
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 403
    const/4 v7, -0x1

    if-le v2, v7, :cond_15b

    const/4 v7, 0x1

    :goto_d7
    invoke-virtual {p0, v7}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 404
    sget-boolean v7, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_15e

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v7

    if-nez v7, :cond_15e

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_ea
    .catchall {:try_start_ce .. :try_end_ea} :catchall_4b

    .line 386
    .restart local v4    # "size":J
    :cond_ea
    cmp-long v6, p1, v4

    if-gez v6, :cond_126

    .line 388
    :cond_ee
    :try_start_ee
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v6, v7, p1, p2}, Lsun/nio/ch/FileDispatcher;->truncate(Ljava/io/FileDescriptor;J)I

    move-result v2

    .line 389
    const/4 v6, -0x3

    if-ne v2, v6, :cond_ff

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v6

    if-nez v6, :cond_ee

    .line 390
    :cond_ff
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_102
    .catchall {:try_start_ee .. :try_end_102} :catchall_cd

    move-result v6

    if-nez v6, :cond_126

    .line 402
    :try_start_105
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 403
    const/4 v6, -0x1

    if-le v2, v6, :cond_121

    const/4 v6, 0x1

    :goto_10e
    invoke-virtual {p0, v6}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 404
    sget-boolean v6, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_123

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v6

    if-nez v6, :cond_123

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_121
    .catchall {:try_start_105 .. :try_end_121} :catchall_4b

    .line 403
    :cond_121
    const/4 v6, 0x0

    goto :goto_10e

    .line 391
    :cond_123
    const/4 v6, 0x0

    monitor-exit v8

    return-object v6

    .line 395
    :cond_126
    cmp-long v6, v0, p1

    if-lez v6, :cond_12b

    .line 396
    move-wide v0, p1

    .line 398
    :cond_12b
    :try_start_12b
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v6, v0, v1}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v6

    long-to-int v2, v6

    .line 399
    const/4 v6, -0x3

    if-ne v2, v6, :cond_13b

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_138
    .catchall {:try_start_12b .. :try_end_138} :catchall_cd

    move-result v6

    if-nez v6, :cond_12b

    .line 402
    :cond_13b
    :try_start_13b
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 403
    const/4 v6, -0x1

    if-le v2, v6, :cond_157

    const/4 v6, 0x1

    :goto_144
    invoke-virtual {p0, v6}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 404
    sget-boolean v6, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_159

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v6

    if-nez v6, :cond_159

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_157
    .catchall {:try_start_13b .. :try_end_157} :catchall_4b

    .line 403
    :cond_157
    const/4 v6, 0x0

    goto :goto_144

    :cond_159
    monitor-exit v8

    .line 400
    return-object p0

    .line 403
    .end local v4    # "size":J
    :cond_15b
    const/4 v7, 0x0

    goto/16 :goto_d7

    .line 401
    :cond_15e
    :try_start_15e
    throw v6
    :try_end_15f
    .catchall {:try_start_15e .. :try_end_15f} :catchall_4b
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/FileChannelImpl;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public tryLock(JJZ)Ljava/nio/channels/FileLock;
    .registers 19
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1118
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1119
    if-eqz p5, :cond_11

    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_11

    .line 1120
    new-instance v1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v1

    .line 1121
    :cond_11
    if-nez p5, :cond_1f

    iget-boolean v1, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    .line 1122
    new-instance v1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v1

    .line 1123
    :cond_1f
    new-instance v0, Lsun/nio/ch/FileLockImpl;

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 1124
    .local v0, "fli":Lsun/nio/ch/FileLockImpl;
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->fileLockTable()Lsun/nio/ch/FileLockTable;

    move-result-object v10

    .line 1125
    .local v10, "flt":Lsun/nio/ch/FileLockTable;
    invoke-virtual {v10, v0}, Lsun/nio/ch/FileLockTable;->add(Ljava/nio/channels/FileLock;)V

    .line 1128
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v12

    .line 1131
    .local v12, "ti":I
    :try_start_37
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1132
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_47} :catch_55
    .catchall {:try_start_37 .. :try_end_47} :catchall_5a

    move-result v11

    .line 1137
    .local v11, "result":I
    const/4 v1, -0x1

    if-ne v11, v1, :cond_61

    .line 1138
    :try_start_4b
    invoke-virtual {v10, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_5a

    .line 1139
    const/4 v1, 0x0

    .line 1150
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1139
    return-object v1

    .line 1133
    .end local v11    # "result":I
    :catch_55
    move-exception v9

    .line 1134
    .local v9, "e":Ljava/io/IOException;
    :try_start_56
    invoke-virtual {v10, v0}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1135
    throw v9
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5a

    .line 1149
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_5a
    move-exception v1

    .line 1150
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1149
    throw v1

    .line 1141
    .restart local v11    # "result":I
    :cond_61
    const/4 v1, 0x1

    if-ne v11, v1, :cond_83

    .line 1142
    :try_start_64
    sget-boolean v1, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_70

    if-nez p5, :cond_70

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1143
    :cond_70
    new-instance v2, Lsun/nio/ch/FileLockImpl;

    .line 1144
    const/4 v8, 0x0

    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    .line 1143
    invoke-direct/range {v2 .. v8}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 1145
    .local v2, "fli2":Lsun/nio/ch/FileLockImpl;
    invoke-virtual {v10, v0, v2}, Lsun/nio/ch/FileLockTable;->replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    :try_end_7d
    .catchall {:try_start_64 .. :try_end_7d} :catchall_5a

    .line 1150
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1146
    return-object v2

    .line 1150
    .end local v2    # "fli2":Lsun/nio/ch/FileLockImpl;
    :cond_83
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1148
    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 11
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 227
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 228
    iget-boolean v2, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-nez v2, :cond_f

    .line 229
    new-instance v2, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v2

    .line 230
    :cond_f
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v5

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "n":I
    const/4 v1, -0x1

    .line 234
    .local v1, "ti":I
    :try_start_14
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 235
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    .line 236
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_76

    move-result v2

    if-nez v2, :cond_41

    .line 243
    :try_start_23
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 244
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 245
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_3f

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_3f

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3c

    .line 230
    :catchall_3c
    move-exception v2

    monitor-exit v5

    throw v2

    :cond_3f
    monitor-exit v5

    .line 237
    return v4

    .line 239
    :cond_41
    :try_start_41
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v2, p1, v6, v7, v8}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 240
    const/4 v2, -0x3

    if-ne v0, v2, :cond_54

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_41

    .line 241
    :cond_54
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_57
    .catchall {:try_start_41 .. :try_end_57} :catchall_76

    move-result v2

    .line 243
    :try_start_58
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 244
    if-lez v0, :cond_72

    :goto_5f
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 245
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_74

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_74

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_72
    .catchall {:try_start_58 .. :try_end_72} :catchall_3c

    :cond_72
    move v3, v4

    .line 244
    goto :goto_5f

    :cond_74
    monitor-exit v5

    .line 241
    return v2

    .line 242
    :catchall_76
    move-exception v2

    .line 243
    :try_start_77
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 244
    if-lez v0, :cond_91

    :goto_7e
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 245
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_93

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_93

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_91
    move v3, v4

    .line 244
    goto :goto_7e

    .line 242
    :cond_93
    throw v2
    :try_end_94
    .catchall {:try_start_77 .. :try_end_94} :catchall_3c
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 784
    if-nez p1, :cond_8

    .line 785
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 786
    :cond_8
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_17

    .line 787
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_17
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-nez v0, :cond_21

    .line 789
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 790
    :cond_21
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 791
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v0}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 792
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_2f
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->writeInternal(Ljava/nio/ByteBuffer;J)I
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_35

    move-result v1

    monitor-exit v0

    return v1

    .line 792
    :catchall_35
    move-exception v1

    monitor-exit v0

    throw v1

    .line 796
    :cond_38
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->writeInternal(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .registers 16
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    .line 253
    if-ltz p2, :cond_8

    if-gez p3, :cond_e

    .line 254
    :cond_8
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 253
    :cond_e
    array-length v3, p1

    sub-int/2addr v3, p3

    if-gt p2, v3, :cond_8

    .line 255
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 256
    iget-boolean v3, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-nez v3, :cond_1f

    .line 257
    new-instance v3, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v3

    .line 258
    :cond_1f
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v6

    .line 259
    const-wide/16 v0, 0x0

    .line 260
    .local v0, "n":J
    const/4 v2, -0x1

    .line 262
    .local v2, "ti":I
    :try_start_25
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 263
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 264
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_8a

    move-result v3

    if-nez v3, :cond_52

    .line 271
    :try_start_34
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 272
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 273
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_50

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_50

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_4d
    .catchall {:try_start_34 .. :try_end_4d} :catchall_4d

    .line 258
    :catchall_4d
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_50
    monitor-exit v6

    .line 265
    return-wide v10

    .line 267
    :cond_52
    :try_start_52
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v3, p1, p2, p3, v7}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    .line 268
    const-wide/16 v8, -0x3

    cmp-long v3, v0, v8

    if-nez v3, :cond_66

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_52

    .line 269
    :cond_66
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_69
    .catchall {:try_start_52 .. :try_end_69} :catchall_8a

    move-result-wide v8

    .line 271
    :try_start_6a
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 272
    cmp-long v3, v0, v10

    if-lez v3, :cond_86

    :goto_73
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 273
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_88

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_88

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_86
    .catchall {:try_start_6a .. :try_end_86} :catchall_4d

    :cond_86
    move v4, v5

    .line 272
    goto :goto_73

    :cond_88
    monitor-exit v6

    .line 269
    return-wide v8

    .line 270
    :catchall_8a
    move-exception v3

    .line 271
    :try_start_8b
    iget-object v7, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v7, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 272
    cmp-long v7, v0, v10

    if-lez v7, :cond_a7

    :goto_94
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 273
    sget-boolean v4, Lsun/nio/ch/FileChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_a9

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v4

    if-nez v4, :cond_a9

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_a7
    move v4, v5

    .line 272
    goto :goto_94

    .line 270
    :cond_a9
    throw v3
    :try_end_aa
    .catchall {:try_start_8b .. :try_end_aa} :catchall_4d
.end method
