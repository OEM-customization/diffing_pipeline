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
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist MAPPED_TRANSFER_SIZE:J = 0x800000L

.field private static final blacklist MAP_PV:I = 0x2

.field private static final blacklist MAP_RO:I = 0x0

.field private static final blacklist MAP_RW:I = 0x1

.field private static final blacklist TRANSFER_SIZE:I = 0x2000

.field private static final blacklist allocationGranularity:J

.field private static volatile blacklist fileSupported:Z

.field private static blacklist isSharedFileLockTable:Z

.field private static volatile blacklist pipeSupported:Z

.field private static volatile blacklist propertyChecked:Z

.field private static volatile blacklist transferSupported:Z


# instance fields
.field private final blacklist append:Z

.field public final blacklist fd:Ljava/io/FileDescriptor;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private volatile blacklist fileLockTable:Lsun/nio/ch/FileLockTable;

.field private final blacklist guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final blacklist nd:Lsun/nio/ch/FileDispatcher;

.field private final blacklist parent:Ljava/lang/Object;

.field private final blacklist path:Ljava/lang/String;

.field private final blacklist positionLock:Ljava/lang/Object;

.field private final blacklist readable:Z

.field private final blacklist threads:Lsun/nio/ch/NativeThreadSet;

.field private final blacklist writable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 58
    nop

    .line 449
    const/4 v0, 0x1

    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z

    .line 454
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    .line 459
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z

    .line 1292
    invoke-static {}, Lsun/nio/ch/FileChannelImpl;->initIDs()J

    move-result-wide v0

    sput-wide v0, Lsun/nio/ch/FileChannelImpl;->allocationGranularity:J

    .line 1293
    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "readable"    # Z
    .param p4, "writable"    # Z
    .param p5, "append"    # Z
    .param p6, "parent"    # Ljava/lang/Object;

    .line 100
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    .line 89
    new-instance v0, Lsun/nio/ch/NativeThreadSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lsun/nio/ch/NativeThreadSet;-><init>(I)V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    .line 95
    nop

    .line 96
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 101
    iput-object p1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 102
    iput-boolean p3, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    .line 103
    iput-boolean p4, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    .line 104
    iput-boolean p5, p0, Lsun/nio/ch/FileChannelImpl;->append:Z

    .line 105
    iput-object p6, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    .line 106
    iput-object p2, p0, Lsun/nio/ch/FileChannelImpl;->path:Ljava/lang/String;

    .line 107
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    invoke-direct {v0, p5}, Lsun/nio/ch/FileDispatcherImpl;-><init>(Z)V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    .line 109
    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 110
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 113
    :cond_3b
    return-void
.end method

.method static synthetic blacklist access$000(JJ)I
    .registers 5
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 58
    invoke-static {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->unmap0(JJ)I

    move-result v0

    return v0
.end method

.method private blacklist ensureOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    return-void

    .line 133
    :cond_7
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method private blacklist fileLockTable()Lsun/nio/ch/FileLockTable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1099
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v0, :cond_3b

    .line 1100
    monitor-enter p0

    .line 1101
    :try_start_5
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v0, :cond_36

    .line 1102
    invoke-static {}, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1103
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_38

    .line 1105
    .local v0, "ti":I
    :try_start_15
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1106
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {p0, v1}, Lsun/nio/ch/FileLockTable;->newSharedFileLockTable(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Lsun/nio/ch/FileLockTable;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_27

    .line 1108
    :try_start_20
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1109
    nop

    .line 1110
    .end local v0    # "ti":I
    goto :goto_36

    .line 1108
    .restart local v0    # "ti":I
    :catchall_27
    move-exception v1

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1109
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    throw v1

    .line 1111
    .end local v0    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    :cond_2f
    new-instance v0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;

    invoke-direct {v0}, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    .line 1114
    :cond_36
    :goto_36
    monitor-exit p0

    goto :goto_3b

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_38

    throw v0

    .line 1116
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    return-object v0
.end method

.method private static native blacklist initIDs()J
.end method

.method private static blacklist isSharedFileLockTable()Z
    .registers 4

    .line 1084
    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z

    if-nez v0, :cond_30

    .line 1085
    const-class v0, Lsun/nio/ch/FileChannelImpl;

    monitor-enter v0

    .line 1086
    :try_start_7
    sget-boolean v1, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z

    if-nez v1, :cond_2b

    .line 1087
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string v2, "sun.nio.ch.disableSystemWideOverlappingFileLockCheck"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1090
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v1, :cond_26

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_26

    :cond_24
    const/4 v3, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    move v3, v2

    :goto_27
    sput-boolean v3, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable:Z

    .line 1091
    sput-boolean v2, Lsun/nio/ch/FileChannelImpl;->propertyChecked:Z

    .line 1093
    .end local v1    # "value":Ljava/lang/String;
    :cond_2b
    monitor-exit v0

    goto :goto_30

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v1

    .line 1095
    :cond_30
    :goto_30
    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->isSharedFileLockTable:Z

    return v0
.end method

.method private native blacklist map0(IJJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static blacklist open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;
    .registers 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "readable"    # Z
    .param p3, "writable"    # Z
    .param p4, "parent"    # Ljava/lang/Object;

    .line 120
    new-instance v7, Lsun/nio/ch/FileChannelImpl;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileChannelImpl;-><init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)V

    return-object v7
.end method

.method public static blacklist open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;
    .registers 14
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "readable"    # Z
    .param p3, "writable"    # Z
    .param p4, "append"    # Z
    .param p5, "parent"    # Ljava/lang/Object;

    .line 128
    new-instance v7, Lsun/nio/ch/FileChannelImpl;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileChannelImpl;-><init>(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)V

    return-object v7
.end method

.method private native blacklist position0(Ljava/io/FileDescriptor;J)J
.end method

.method private blacklist readInternal(Ljava/nio/ByteBuffer;J)I
    .registers 10
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 783
    nop

    .line 784
    const/4 v0, 0x0

    .line 785
    .local v0, "n":I
    const/4 v1, -0x1

    .line 787
    .local v1, "ti":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 788
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v4

    move v1, v4

    .line 789
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_48

    if-nez v4, :cond_24

    .line 790
    const/4 v4, -0x1

    .line 796
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 797
    if-lez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 798
    nop

    .line 790
    return v4

    .line 792
    :cond_24
    :try_start_24
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v4, p1, p2, p3, v5}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v4

    move v0, v4

    .line 793
    const/4 v4, -0x3

    if-ne v0, v4, :cond_36

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_24

    .line 794
    :cond_36
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v4
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_48

    .line 796
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 797
    if-lez v0, :cond_42

    goto :goto_43

    :cond_42
    move v2, v3

    :goto_43
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 798
    nop

    .line 794
    return v4

    .line 796
    :catchall_48
    move-exception v4

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 797
    if-lez v0, :cond_51

    goto :goto_52

    :cond_51
    move v2, v3

    :goto_52
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 798
    nop

    .line 799
    throw v4
.end method

.method private blacklist transferFromArbitraryChannel(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .registers 22
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    move-wide/from16 v1, p4

    const-wide/16 v3, 0x2000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    .line 715
    .local v5, "c":I
    invoke-static {v5}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 716
    .local v6, "bb":Ljava/nio/ByteBuffer;
    const-wide/16 v7, 0x0

    .line 717
    .local v7, "tw":J
    move-wide/from16 v9, p2

    .line 719
    .local v9, "pos":J
    :try_start_11
    invoke-static {v6}, Lsun/nio/ch/Util;->erase(Ljava/nio/ByteBuffer;)V

    .line 720
    :goto_14
    cmp-long v0, v7, v1

    if-gez v0, :cond_4c

    .line 721
    sub-long v11, v1, v7

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v0, v11

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_22} :catch_5b
    .catchall {:try_start_11 .. :try_end_22} :catchall_55

    .line 724
    move-object/from16 v11, p1

    :try_start_24
    invoke-interface {v11, v6}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 725
    .local v0, "nr":I
    if-gtz v0, :cond_2d

    .line 726
    move-object/from16 v12, p0

    goto :goto_50

    .line 727
    :cond_2d
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_30} :catch_48
    .catchall {:try_start_24 .. :try_end_30} :catchall_44

    .line 728
    move-object/from16 v12, p0

    :try_start_32
    invoke-virtual {v12, v6, v9, v10}, Lsun/nio/ch/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    move-result v13

    .line 729
    .local v13, "nw":I
    int-to-long v14, v13

    add-long/2addr v7, v14

    .line 730
    if-eq v13, v0, :cond_3b

    .line 731
    goto :goto_50

    .line 732
    :cond_3b
    int-to-long v14, v13

    add-long/2addr v9, v14

    .line 733
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_40} :catch_42
    .catchall {:try_start_32 .. :try_end_40} :catchall_6d

    .line 734
    nop

    .end local v0    # "nr":I
    .end local v13    # "nw":I
    goto :goto_14

    .line 736
    :catch_42
    move-exception v0

    goto :goto_60

    .line 741
    :catchall_44
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_6e

    .line 736
    :catch_48
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_60

    .line 720
    :cond_4c
    move-object/from16 v12, p0

    move-object/from16 v11, p1

    .line 735
    :goto_50
    nop

    .line 741
    invoke-static {v6}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 735
    return-wide v7

    .line 741
    :catchall_55
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v11, p1

    goto :goto_6e

    .line 736
    :catch_5b
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v11, p1

    .line 737
    .local v0, "x":Ljava/io/IOException;
    :goto_60
    const-wide/16 v3, 0x0

    cmp-long v3, v7, v3

    if-lez v3, :cond_6b

    .line 738
    nop

    .line 741
    invoke-static {v6}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 738
    return-wide v7

    .line 739
    :cond_6b
    nop

    .end local v5    # "c":I
    .end local v6    # "bb":Ljava/nio/ByteBuffer;
    .end local v7    # "tw":J
    .end local v9    # "pos":J
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "src":Ljava/nio/channels/ReadableByteChannel;
    .end local p2    # "position":J
    .end local p4    # "count":J
    :try_start_6c
    throw v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 741
    .end local v0    # "x":Ljava/io/IOException;
    .restart local v5    # "c":I
    .restart local v6    # "bb":Ljava/nio/ByteBuffer;
    .restart local v7    # "tw":J
    .restart local v9    # "pos":J
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "src":Ljava/nio/channels/ReadableByteChannel;
    .restart local p2    # "position":J
    .restart local p4    # "count":J
    :catchall_6d
    move-exception v0

    :goto_6e
    invoke-static {v6}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 742
    throw v0
.end method

.method private blacklist transferFromFileChannel(Lsun/nio/ch/FileChannelImpl;JJ)J
    .registers 25
    .param p1, "src"    # Lsun/nio/ch/FileChannelImpl;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    move-object/from16 v7, p1

    iget-boolean v0, v7, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v0, :cond_85

    .line 676
    iget-object v8, v7, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v8

    .line 677
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lsun/nio/ch/FileChannelImpl;->position()J

    move-result-wide v0

    move-wide v9, v0

    .line 678
    .local v9, "pos":J
    invoke-virtual/range {p1 .. p1}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v0

    sub-long/2addr v0, v9

    move-wide/from16 v11, p4

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_7c

    move-wide v13, v0

    .line 680
    .local v13, "max":J
    nop

    .line 681
    .local v0, "remaining":J
    move-wide v2, v9

    move-wide v15, v2

    move-wide/from16 v3, p2

    move-wide v1, v0

    .line 682
    .end local v0    # "remaining":J
    .end local p2    # "position":J
    .local v1, "remaining":J
    .local v3, "position":J
    .local v15, "p":J
    :goto_20
    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_6e

    .line 683
    const-wide/32 v5, 0x800000

    :try_start_29
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 685
    .local v5, "size":J
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_69

    move-wide/from16 v17, v1

    .end local v1    # "remaining":J
    .local v17, "remaining":J
    move-object/from16 v1, p1

    move-object v2, v0

    move-wide v11, v3

    .end local v3    # "position":J
    .local v11, "position":J
    move-wide v3, v15

    :try_start_36
    invoke-virtual/range {v1 .. v6}, Lsun/nio/ch/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_65

    move-object v1, v0

    .line 687
    .local v1, "bb":Ljava/nio/MappedByteBuffer;
    move-object/from16 v2, p0

    :try_start_3d
    invoke-virtual {v2, v1, v11, v12}, Lsun/nio/ch/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    move-result v0
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_53
    .catchall {:try_start_3d .. :try_end_41} :catchall_51

    int-to-long v3, v0

    .line 688
    .local v3, "n":J
    nop

    .line 689
    add-long/2addr v15, v3

    .line 690
    add-long/2addr v11, v3

    .line 691
    sub-long v17, v17, v3

    .line 698
    .end local v3    # "n":J
    :try_start_47
    invoke-static {v1}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 699
    nop

    .line 700
    .end local v1    # "bb":Ljava/nio/MappedByteBuffer;
    .end local v5    # "size":J
    move-wide v3, v11

    move-wide/from16 v1, v17

    move-wide/from16 v11, p4

    goto :goto_20

    .line 698
    .restart local v1    # "bb":Ljava/nio/MappedByteBuffer;
    .restart local v5    # "size":J
    :catchall_51
    move-exception v0

    goto :goto_60

    .line 692
    :catch_53
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 694
    .local v0, "ioe":Ljava/io/IOException;
    cmp-long v3, v17, v13

    if-eqz v3, :cond_5e

    .line 698
    invoke-static {v1}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_83

    .line 696
    goto :goto_73

    .line 695
    :cond_5e
    nop

    .end local v1    # "bb":Ljava/nio/MappedByteBuffer;
    .end local v5    # "size":J
    .end local v9    # "pos":J
    .end local v11    # "position":J
    .end local v13    # "max":J
    .end local v15    # "p":J
    .end local v17    # "remaining":J
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "src":Lsun/nio/ch/FileChannelImpl;
    .end local p4    # "count":J
    :try_start_5f
    throw v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_51

    .line 698
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v1    # "bb":Ljava/nio/MappedByteBuffer;
    .restart local v5    # "size":J
    .restart local v9    # "pos":J
    .restart local v11    # "position":J
    .restart local v13    # "max":J
    .restart local v15    # "p":J
    .restart local v17    # "remaining":J
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "src":Lsun/nio/ch/FileChannelImpl;
    .restart local p4    # "count":J
    :goto_60
    :try_start_60
    invoke-static {v1}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 699
    nop

    .end local v11    # "position":J
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "src":Lsun/nio/ch/FileChannelImpl;
    .end local p4    # "count":J
    throw v0

    .line 704
    .end local v1    # "bb":Ljava/nio/MappedByteBuffer;
    .end local v5    # "size":J
    .end local v9    # "pos":J
    .end local v13    # "max":J
    .end local v15    # "p":J
    .end local v17    # "remaining":J
    .restart local v11    # "position":J
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "src":Lsun/nio/ch/FileChannelImpl;
    .restart local p4    # "count":J
    :catchall_65
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_81

    .end local v11    # "position":J
    .local v3, "position":J
    :catchall_69
    move-exception v0

    move-object/from16 v2, p0

    move-wide v11, v3

    .end local v3    # "position":J
    .restart local v11    # "position":J
    goto :goto_81

    .line 682
    .end local v11    # "position":J
    .local v1, "remaining":J
    .restart local v3    # "position":J
    .restart local v9    # "pos":J
    .restart local v13    # "max":J
    .restart local v15    # "p":J
    :cond_6e
    move-wide/from16 v17, v1

    move-wide v11, v3

    move-object/from16 v2, p0

    .line 701
    .end local v1    # "remaining":J
    .end local v3    # "position":J
    .restart local v11    # "position":J
    .restart local v17    # "remaining":J
    :goto_73
    sub-long v0, v13, v17

    .line 702
    .local v0, "nwritten":J
    add-long v3, v9, v0

    invoke-virtual {v7, v3, v4}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    .line 703
    monitor-exit v8

    return-wide v0

    .line 704
    .end local v0    # "nwritten":J
    .end local v9    # "pos":J
    .end local v11    # "position":J
    .end local v13    # "max":J
    .end local v15    # "p":J
    .end local v17    # "remaining":J
    .restart local p2    # "position":J
    :catchall_7c
    move-exception v0

    move-object/from16 v2, p0

    move-wide/from16 v11, p2

    .end local p2    # "position":J
    .restart local v11    # "position":J
    :goto_81
    monitor-exit v8
    :try_end_82
    .catchall {:try_start_60 .. :try_end_82} :catchall_83

    throw v0

    :catchall_83
    move-exception v0

    goto :goto_81

    .line 675
    .end local v11    # "position":J
    .restart local p2    # "position":J
    :cond_85
    move-object/from16 v2, p0

    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method private native blacklist transferTo0(Ljava/io/FileDescriptor;JJLjava/io/FileDescriptor;)J
.end method

.method private blacklist transferToArbitraryChannel(JILjava/nio/channels/WritableByteChannel;)J
    .registers 16
    .param p1, "position"    # J
    .param p3, "icount"    # I
    .param p4, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    const/16 v0, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 605
    .local v1, "c":I
    invoke-static {v1}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 606
    .local v2, "bb":Ljava/nio/ByteBuffer;
    const-wide/16 v3, 0x0

    .line 607
    .local v3, "tw":J
    move-wide v5, p1

    .line 609
    .local v5, "pos":J
    :try_start_d
    invoke-static {v2}, Lsun/nio/ch/Util;->erase(Ljava/nio/ByteBuffer;)V

    .line 610
    :goto_10
    int-to-long v7, p3

    cmp-long v7, v3, v7

    if-gez v7, :cond_39

    .line 611
    int-to-long v7, p3

    sub-long/2addr v7, v3

    long-to-int v7, v7

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 612
    invoke-virtual {p0, v2, v5, v6}, Lsun/nio/ch/FileChannelImpl;->read(Ljava/nio/ByteBuffer;J)I

    move-result v7

    .line 613
    .local v7, "nr":I
    if-gtz v7, :cond_26

    .line 614
    goto :goto_39

    .line 615
    :cond_26
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 618
    invoke-interface {p4, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 619
    .local v8, "nw":I
    int-to-long v9, v8

    add-long/2addr v3, v9

    .line 620
    if-eq v8, v7, :cond_32

    .line 621
    goto :goto_39

    .line 622
    :cond_32
    int-to-long v9, v8

    add-long/2addr v5, v9

    .line 623
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_37} :catch_40
    .catchall {:try_start_d .. :try_end_37} :catchall_3e

    .line 624
    nop

    .end local v7    # "nr":I
    .end local v8    # "nw":I
    goto :goto_10

    .line 625
    :cond_39
    :goto_39
    nop

    .line 631
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 625
    return-wide v3

    .line 631
    :catchall_3e
    move-exception v0

    goto :goto_4e

    .line 626
    :catch_40
    move-exception v0

    .line 627
    .local v0, "x":Ljava/io/IOException;
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_4c

    .line 628
    nop

    .line 631
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 628
    return-wide v3

    .line 629
    :cond_4c
    nop

    .end local v1    # "c":I
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    .end local v3    # "tw":J
    .end local v5    # "pos":J
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "position":J
    .end local p3    # "icount":I
    .end local p4    # "target":Ljava/nio/channels/WritableByteChannel;
    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_3e

    .line 631
    .end local v0    # "x":Ljava/io/IOException;
    .restart local v1    # "c":I
    .restart local v2    # "bb":Ljava/nio/ByteBuffer;
    .restart local v3    # "tw":J
    .restart local v5    # "pos":J
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "position":J
    .restart local p3    # "icount":I
    .restart local p4    # "target":Ljava/nio/channels/WritableByteChannel;
    :goto_4e
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 632
    throw v0
.end method

.method private blacklist transferToDirectly(JILjava/nio/channels/WritableByteChannel;)J
    .registers 20
    .param p1, "position"    # J
    .param p3, "icount"    # I
    .param p4, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    move-object v7, p0

    move-object/from16 v8, p4

    sget-boolean v0, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z

    const-wide/16 v1, -0x4

    if-nez v0, :cond_a

    .line 505
    return-wide v1

    .line 507
    :cond_a
    const/4 v0, 0x0

    .line 508
    .local v0, "targetFD":Ljava/io/FileDescriptor;
    instance-of v3, v8, Lsun/nio/ch/FileChannelImpl;

    const-wide/16 v4, -0x6

    if-eqz v3, :cond_1d

    .line 509
    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z

    if-nez v3, :cond_16

    .line 510
    return-wide v4

    .line 511
    :cond_16
    move-object v3, v8

    check-cast v3, Lsun/nio/ch/FileChannelImpl;

    iget-object v0, v3, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-object v9, v0

    goto :goto_40

    .line 512
    :cond_1d
    instance-of v3, v8, Lsun/nio/ch/SelChImpl;

    if-eqz v3, :cond_3f

    .line 514
    instance-of v3, v8, Lsun/nio/ch/SinkChannelImpl;

    if-eqz v3, :cond_2a

    sget-boolean v3, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    if-nez v3, :cond_2a

    .line 515
    return-wide v4

    .line 519
    :cond_2a
    move-object v3, v8

    check-cast v3, Ljava/nio/channels/SelectableChannel;

    .line 520
    .local v3, "sc":Ljava/nio/channels/SelectableChannel;
    iget-object v6, v7, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v6, v3}, Lsun/nio/ch/FileDispatcher;->canTransferToDirectly(Ljava/nio/channels/SelectableChannel;)Z

    move-result v6

    if-nez v6, :cond_36

    .line 521
    return-wide v4

    .line 523
    :cond_36
    move-object v4, v8

    check-cast v4, Lsun/nio/ch/SelChImpl;

    invoke-interface {v4}, Lsun/nio/ch/SelChImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v9, v0

    goto :goto_40

    .line 512
    .end local v3    # "sc":Ljava/nio/channels/SelectableChannel;
    :cond_3f
    move-object v9, v0

    .line 526
    .end local v0    # "targetFD":Ljava/io/FileDescriptor;
    .local v9, "targetFD":Ljava/io/FileDescriptor;
    :goto_40
    if-nez v9, :cond_43

    .line 527
    return-wide v1

    .line 528
    :cond_43
    iget-object v0, v7, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v10

    .line 529
    .local v10, "thisFDVal":I
    invoke-static {v9}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v11

    .line 530
    .local v11, "targetFDVal":I
    if-ne v10, v11, :cond_50

    .line 531
    return-wide v1

    .line 533
    :cond_50
    iget-object v0, v7, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v0}, Lsun/nio/ch/FileDispatcher;->transferToDirectlyNeedsPositionLock()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 534
    iget-object v12, v7, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v12

    .line 535
    :try_start_5b
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->position()J

    move-result-wide v0
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_78

    move-wide v13, v0

    .line 537
    .local v13, "pos":J
    move-object v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v9

    :try_start_68
    invoke-direct/range {v1 .. v6}, Lsun/nio/ch/FileChannelImpl;->transferToDirectlyInternal(JILjava/nio/channels/WritableByteChannel;Ljava/io/FileDescriptor;)J

    move-result-wide v0
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_71

    .line 540
    :try_start_6c
    invoke-virtual {p0, v13, v14}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    monitor-exit v12

    .line 537
    return-wide v0

    .line 540
    :catchall_71
    move-exception v0

    move-object v1, v0

    invoke-virtual {p0, v13, v14}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    .line 541
    nop

    .end local v9    # "targetFD":Ljava/io/FileDescriptor;
    .end local v10    # "thisFDVal":I
    .end local v11    # "targetFDVal":I
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "position":J
    .end local p3    # "icount":I
    .end local p4    # "target":Ljava/nio/channels/WritableByteChannel;
    throw v1

    .line 542
    .end local v13    # "pos":J
    .restart local v9    # "targetFD":Ljava/io/FileDescriptor;
    .restart local v10    # "thisFDVal":I
    .restart local v11    # "targetFDVal":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "position":J
    .restart local p3    # "icount":I
    .restart local p4    # "target":Ljava/nio/channels/WritableByteChannel;
    :catchall_78
    move-exception v0

    monitor-exit v12
    :try_end_7a
    .catchall {:try_start_6c .. :try_end_7a} :catchall_78

    throw v0

    .line 544
    :cond_7b
    move-object v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lsun/nio/ch/FileChannelImpl;->transferToDirectlyInternal(JILjava/nio/channels/WritableByteChannel;Ljava/io/FileDescriptor;)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist transferToDirectlyInternal(JILjava/nio/channels/WritableByteChannel;Ljava/io/FileDescriptor;)J
    .registers 23
    .param p1, "position"    # J
    .param p3, "icount"    # I
    .param p4, "target"    # Ljava/nio/channels/WritableByteChannel;
    .param p5, "targetFD"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    move-object/from16 v8, p0

    move-object/from16 v9, p4

    .line 469
    const-wide/16 v1, -0x1

    .line 470
    .local v1, "n":J
    const/4 v3, -0x1

    .line 472
    .local v3, "ti":I
    const/4 v10, 0x1

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 473
    iget-object v0, v8, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_a3

    move v14, v0

    .line 474
    .end local v3    # "ti":I
    .local v14, "ti":I
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_a0

    if-nez v0, :cond_2b

    .line 475
    nop

    .line 495
    iget-object v0, v8, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v14}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 496
    cmp-long v0, v1, v11

    if-lez v0, :cond_26

    goto :goto_27

    :cond_26
    move v10, v13

    :goto_27
    invoke-virtual {v8, v10}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 475
    return-wide v11

    .line 477
    :cond_2b
    :try_start_2b
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_a0

    move-wide v15, v1

    .line 479
    .end local v1    # "n":J
    .local v15, "n":J
    :cond_33
    :try_start_33
    iget-object v2, v8, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    move/from16 v7, p3

    int-to-long v5, v7

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lsun/nio/ch/FileChannelImpl;->transferTo0(Ljava/io/FileDescriptor;JJLjava/io/FileDescriptor;)J

    move-result-wide v0

    move-wide v15, v0

    .line 480
    const-wide/16 v0, -0x3

    cmp-long v0, v15, v0

    if-nez v0, :cond_4f

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_33

    .line 481
    :cond_4f
    const-wide/16 v0, -0x6

    cmp-long v2, v15, v0

    if-nez v2, :cond_71

    .line 482
    instance-of v2, v9, Lsun/nio/ch/SinkChannelImpl;

    if-eqz v2, :cond_5b

    .line 483
    sput-boolean v13, Lsun/nio/ch/FileChannelImpl;->pipeSupported:Z

    .line 484
    :cond_5b
    instance-of v2, v9, Lsun/nio/ch/FileChannelImpl;

    if-eqz v2, :cond_61

    .line 485
    sput-boolean v13, Lsun/nio/ch/FileChannelImpl;->fileSupported:Z
    :try_end_61
    .catchall {:try_start_33 .. :try_end_61} :catchall_9c

    .line 486
    :cond_61
    nop

    .line 495
    iget-object v2, v8, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v14}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 496
    cmp-long v2, v15, v11

    if-lez v2, :cond_6c

    goto :goto_6d

    :cond_6c
    move v10, v13

    :goto_6d
    invoke-virtual {v8, v10}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 486
    return-wide v0

    .line 488
    :cond_71
    const-wide/16 v0, -0x4

    cmp-long v2, v15, v0

    if-nez v2, :cond_89

    .line 490
    :try_start_77
    sput-boolean v13, Lsun/nio/ch/FileChannelImpl;->transferSupported:Z
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_9c

    .line 491
    nop

    .line 495
    iget-object v2, v8, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v14}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 496
    cmp-long v2, v15, v11

    if-lez v2, :cond_84

    goto :goto_85

    :cond_84
    move v10, v13

    :goto_85
    invoke-virtual {v8, v10}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 491
    return-wide v0

    .line 493
    :cond_89
    :try_start_89
    invoke-static/range {v15 .. v16}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v0
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_9c

    .line 495
    iget-object v2, v8, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v14}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 496
    cmp-long v2, v15, v11

    if-lez v2, :cond_97

    goto :goto_98

    :cond_97
    move v10, v13

    :goto_98
    invoke-virtual {v8, v10}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 493
    return-wide v0

    .line 495
    :catchall_9c
    move-exception v0

    move v3, v14

    move-wide v1, v15

    goto :goto_a4

    .end local v15    # "n":J
    .restart local v1    # "n":J
    :catchall_a0
    move-exception v0

    move v3, v14

    goto :goto_a4

    .end local v14    # "ti":I
    .restart local v3    # "ti":I
    :catchall_a3
    move-exception v0

    :goto_a4
    iget-object v4, v8, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 496
    cmp-long v4, v1, v11

    if-lez v4, :cond_ae

    goto :goto_af

    :cond_ae
    move v10, v13

    :goto_af
    invoke-virtual {v8, v10}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 497
    throw v0
.end method

.method private blacklist transferToTrustedChannel(JJLjava/nio/channels/WritableByteChannel;)J
    .registers 21
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    move-object/from16 v1, p5

    instance-of v2, v1, Lsun/nio/ch/SelChImpl;

    .line 556
    .local v2, "isSelChImpl":Z
    instance-of v0, v1, Lsun/nio/ch/FileChannelImpl;

    if-nez v0, :cond_d

    if-nez v2, :cond_d

    .line 557
    const-wide/16 v3, -0x4

    return-wide v3

    .line 560
    :cond_d
    move-wide/from16 v3, p3

    move-wide v11, v3

    move-wide/from16 v3, p1

    .line 561
    .end local p1    # "position":J
    .local v3, "position":J
    .local v11, "remaining":J
    :goto_12
    const-wide/16 v5, 0x0

    cmp-long v0, v11, v5

    if-lez v0, :cond_5b

    .line 562
    const-wide/32 v5, 0x800000

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .line 564
    .local v13, "size":J
    :try_start_1f
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object v5, p0

    move-wide v7, v3

    move-wide v9, v13

    invoke-virtual/range {v5 .. v10}, Lsun/nio/ch/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_28
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1f .. :try_end_28} :catch_4d
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_28} :catch_46

    move-object v5, v0

    .line 567
    .local v5, "dbb":Ljava/nio/MappedByteBuffer;
    :try_start_29
    invoke-interface {v1, v5}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_3f

    .line 568
    .local v0, "n":I
    nop

    .line 569
    int-to-long v6, v0

    sub-long/2addr v11, v6

    .line 570
    if-eqz v2, :cond_36

    .line 577
    :try_start_32
    invoke-static {v5}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 572
    goto :goto_5b

    .line 574
    :cond_36
    nop

    .line 575
    int-to-long v6, v0

    add-long/2addr v3, v6

    .line 577
    .end local v0    # "n":I
    invoke-static {v5}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 578
    nop

    .line 594
    .end local v5    # "dbb":Ljava/nio/MappedByteBuffer;
    nop

    .line 595
    .end local v13    # "size":J
    goto :goto_12

    .line 577
    .restart local v5    # "dbb":Ljava/nio/MappedByteBuffer;
    .restart local v13    # "size":J
    :catchall_3f
    move-exception v0

    move-object v6, v0

    invoke-static {v5}, Lsun/nio/ch/FileChannelImpl;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 578
    nop

    .end local v2    # "isSelChImpl":Z
    .end local v3    # "position":J
    .end local v11    # "remaining":J
    .end local v13    # "size":J
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p3    # "count":J
    .end local p5    # "target":Ljava/nio/channels/WritableByteChannel;
    throw v6
    :try_end_46
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_32 .. :try_end_46} :catch_4d
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_46} :catch_46

    .line 589
    .end local v5    # "dbb":Ljava/nio/MappedByteBuffer;
    .restart local v2    # "isSelChImpl":Z
    .restart local v3    # "position":J
    .restart local v11    # "remaining":J
    .restart local v13    # "size":J
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p3    # "count":J
    .restart local p5    # "target":Ljava/nio/channels/WritableByteChannel;
    :catch_46
    move-exception v0

    .line 591
    .local v0, "ioe":Ljava/io/IOException;
    cmp-long v5, v11, p3

    if-eqz v5, :cond_4c

    .line 593
    goto :goto_5b

    .line 592
    :cond_4c
    throw v0

    .line 579
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_4d
    move-exception v0

    move-object v5, v0

    .line 582
    .local v5, "e":Ljava/nio/channels/ClosedByInterruptException;
    nop

    .line 584
    :try_start_50
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    .line 587
    goto :goto_5a

    .line 585
    :catchall_54
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 586
    .local v0, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {v5, v0}, Ljava/nio/channels/ClosedByInterruptException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 588
    .end local v0    # "suppressed":Ljava/lang/Throwable;
    :goto_5a
    throw v5

    .line 596
    .end local v5    # "e":Ljava/nio/channels/ClosedByInterruptException;
    .end local v13    # "size":J
    :cond_5b
    :goto_5b
    sub-long v5, p3, v11

    return-wide v5
.end method

.method private static blacklist unmap(Ljava/nio/MappedByteBuffer;)V
    .registers 2
    .param p0, "bb"    # Ljava/nio/MappedByteBuffer;

    .line 898
    move-object v0, p0

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v0

    .line 899
    .local v0, "cl":Lsun/misc/Cleaner;
    if-eqz v0, :cond_c

    .line 900
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 901
    :cond_c
    return-void
.end method

.method private static native greylist unmap0(JJ)I
.end method

.method private blacklist writeInternal(Ljava/nio/ByteBuffer;J)I
    .registers 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    nop

    .line 821
    const/4 v0, 0x0

    .line 822
    .local v0, "n":I
    const/4 v1, -0x1

    .line 824
    .local v1, "ti":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 825
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v4

    move v1, v4

    .line 826
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_48

    if-nez v4, :cond_24

    .line 827
    const/4 v4, -0x1

    .line 833
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 834
    if-lez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 835
    nop

    .line 827
    return v4

    .line 829
    :cond_24
    :try_start_24
    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v4, p1, p2, p3, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v4

    move v0, v4

    .line 830
    const/4 v4, -0x3

    if-ne v0, v4, :cond_36

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_24

    .line 831
    :cond_36
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v4
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_48

    .line 833
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 834
    if-lez v0, :cond_42

    goto :goto_43

    :cond_42
    move v2, v3

    :goto_43
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 835
    nop

    .line 831
    return v4

    .line 833
    :catchall_48
    move-exception v4

    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 834
    if-lez v0, :cond_51

    goto :goto_52

    :cond_51
    move v2, v3

    :goto_52
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 835
    nop

    .line 836
    throw v4
.end method


# virtual methods
.method protected whitelist core-platform-api test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 174
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 175
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 177
    :cond_9
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 179
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 180
    nop

    .line 181
    return-void

    .line 179
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 180
    throw v0
.end method

.method public whitelist core-platform-api test-api force(Z)V
    .registers 9
    .param p1, "metaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 429
    const/4 v0, -0x1

    .line 430
    .local v0, "rv":I
    const/4 v1, -0x1

    .line 432
    .local v1, "ti":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    :try_start_8
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 433
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v5

    move v1, v5

    .line 434
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v5
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_46

    if-nez v5, :cond_26

    .line 440
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 441
    if-le v0, v4, :cond_20

    goto :goto_21

    :cond_20
    move v2, v3

    :goto_21
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 442
    nop

    .line 435
    return-void

    .line 437
    :cond_26
    :try_start_26
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v5, v6, p1}, Lsun/nio/ch/FileDispatcher;->force(Ljava/io/FileDescriptor;Z)I

    move-result v5

    move v0, v5

    .line 438
    const/4 v5, -0x3

    if-ne v0, v5, :cond_38

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v5
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_46

    if-nez v5, :cond_26

    .line 440
    :cond_38
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 441
    if-le v0, v4, :cond_40

    goto :goto_41

    :cond_40
    move v2, v3

    :goto_41
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 442
    nop

    .line 444
    return-void

    .line 440
    :catchall_46
    move-exception v5

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 441
    if-le v0, v4, :cond_4f

    goto :goto_50

    :cond_4f
    move v2, v3

    :goto_50
    invoke-virtual {p0, v2}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 442
    nop

    .line 443
    throw v5
.end method

.method protected whitelist core-platform-api test-api implCloseChannel()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 143
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-eqz v0, :cond_40

    .line 144
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v0}, Lsun/nio/ch/FileLockTable;->removeAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/FileLock;

    .line 145
    .local v1, "fl":Ljava/nio/channels/FileLock;
    monitor-enter v1

    .line 146
    :try_start_20
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 147
    iget-object v3, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v4, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lsun/nio/ch/FileDispatcher;->release(Ljava/io/FileDescriptor;JJ)V

    .line 148
    move-object v2, v1

    check-cast v2, Lsun/nio/ch/FileLockImpl;

    invoke-virtual {v2}, Lsun/nio/ch/FileLockImpl;->invalidate()V

    .line 150
    :cond_3b
    monitor-exit v1

    .line 151
    .end local v1    # "fl":Ljava/nio/channels/FileLock;
    goto :goto_13

    .line 150
    .restart local v1    # "fl":Ljava/nio/channels/FileLock;
    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_3d

    throw v0

    .line 155
    .end local v1    # "fl":Ljava/nio/channels/FileLock;
    :cond_40
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->signalAndWait()V

    .line 157
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->parent:Ljava/lang/Object;

    if-eqz v0, :cond_4f

    .line 164
    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    goto :goto_56

    .line 166
    :cond_4f
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lsun/nio/ch/FileDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 169
    :goto_56
    return-void
.end method

.method public whitelist core-platform-api test-api lock(JJZ)Ljava/nio/channels/FileLock;
    .registers 23
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1122
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1123
    if-eqz p5, :cond_12

    iget-boolean v0, v8, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v0, :cond_c

    goto :goto_12

    .line 1124
    :cond_c
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 1125
    :cond_12
    :goto_12
    if-nez p5, :cond_1f

    iget-boolean v0, v8, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_19

    goto :goto_1f

    .line 1126
    :cond_19
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 1127
    :cond_1f
    :goto_1f
    new-instance v0, Lsun/nio/ch/FileLockImpl;

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    move-object v7, v0

    .line 1128
    .local v7, "fli":Lsun/nio/ch/FileLockImpl;
    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->fileLockTable()Lsun/nio/ch/FileLockTable;

    move-result-object v5

    .line 1129
    .local v5, "flt":Lsun/nio/ch/FileLockTable;
    invoke-virtual {v5, v7}, Lsun/nio/ch/FileLockTable;->add(Ljava/nio/channels/FileLock;)V

    .line 1130
    const/4 v6, 0x0

    .line 1131
    .local v6, "completed":Z
    const/4 v1, -0x1

    .line 1133
    .local v1, "ti":I
    :try_start_37
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 1134
    iget-object v0, v8, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v0
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_cf

    move v3, v0

    .line 1135
    .end local v1    # "ti":I
    .local v3, "ti":I
    :try_start_41
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_c8

    if-nez v0, :cond_60

    .line 1136
    const/4 v0, 0x0

    .line 1152
    if-nez v6, :cond_4d

    .line 1153
    invoke-virtual {v5, v7}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1154
    :cond_4d
    iget-object v1, v8, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1156
    :try_start_52
    invoke-virtual {v8, v6}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_55
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_52 .. :try_end_55} :catch_57

    .line 1159
    nop

    .line 1136
    return-object v0

    .line 1157
    :catch_57
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1158
    .local v0, "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v1

    .line 1139
    .end local v0    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :cond_60
    :try_start_60
    iget-object v9, v8, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v10, v8, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v11, 0x1

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    move/from16 v16, p5

    invoke-virtual/range {v9 .. v16}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I

    move-result v0
    :try_end_6f
    .catchall {:try_start_60 .. :try_end_6f} :catchall_c8

    .line 1140
    .local v0, "n":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_80

    :try_start_72
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v1
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_79

    if-nez v1, :cond_60

    goto :goto_80

    .line 1152
    .end local v0    # "n":I
    :catchall_79
    move-exception v0

    move v1, v3

    move-object v13, v5

    move v12, v6

    move-object v14, v7

    goto/16 :goto_d3

    .line 1141
    .restart local v0    # "n":I
    :cond_80
    :goto_80
    :try_start_80
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 1142
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a6

    .line 1143
    nop

    .line 1144
    new-instance v9, Lsun/nio/ch/FileLockImpl;
    :try_end_8c
    .catchall {:try_start_80 .. :try_end_8c} :catchall_c8

    const/4 v10, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move v11, v3

    .end local v3    # "ti":I
    .local v11, "ti":I
    move-wide/from16 v3, p1

    move-object v13, v5

    move v12, v6

    .end local v5    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v6    # "completed":Z
    .local v12, "completed":Z
    .local v13, "flt":Lsun/nio/ch/FileLockTable;
    move-wide/from16 v5, p3

    move-object v14, v7

    .end local v7    # "fli":Lsun/nio/ch/FileLockImpl;
    .local v14, "fli":Lsun/nio/ch/FileLockImpl;
    move v7, v10

    :try_start_99
    invoke-direct/range {v1 .. v7}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    move-object v1, v9

    .line 1146
    .local v1, "fli2":Lsun/nio/ch/FileLockImpl;
    invoke-virtual {v13, v14, v1}, Lsun/nio/ch/FileLockTable;->replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    :try_end_a0
    .catchall {:try_start_99 .. :try_end_a0} :catchall_a3

    .line 1147
    move-object v2, v1

    move-object v7, v2

    .end local v14    # "fli":Lsun/nio/ch/FileLockImpl;
    .local v2, "fli":Lsun/nio/ch/FileLockImpl;
    goto :goto_aa

    .line 1152
    .end local v0    # "n":I
    .end local v1    # "fli2":Lsun/nio/ch/FileLockImpl;
    .end local v2    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v14    # "fli":Lsun/nio/ch/FileLockImpl;
    :catchall_a3
    move-exception v0

    move v1, v11

    goto :goto_d3

    .line 1142
    .end local v11    # "ti":I
    .end local v12    # "completed":Z
    .end local v13    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v14    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v0    # "n":I
    .restart local v3    # "ti":I
    .restart local v5    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v6    # "completed":Z
    .restart local v7    # "fli":Lsun/nio/ch/FileLockImpl;
    :cond_a6
    move v11, v3

    move-object v13, v5

    move v12, v6

    move-object v14, v7

    .line 1149
    .end local v3    # "ti":I
    .end local v5    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v6    # "completed":Z
    .restart local v11    # "ti":I
    .restart local v12    # "completed":Z
    .restart local v13    # "flt":Lsun/nio/ch/FileLockTable;
    :goto_aa
    const/4 v6, 0x1

    .end local v12    # "completed":Z
    .restart local v6    # "completed":Z
    goto :goto_b0

    .line 1141
    .end local v11    # "ti":I
    .end local v13    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v3    # "ti":I
    .restart local v5    # "flt":Lsun/nio/ch/FileLockTable;
    :cond_ac
    move v11, v3

    move-object v13, v5

    move v12, v6

    move-object v14, v7

    .line 1152
    .end local v0    # "n":I
    .end local v3    # "ti":I
    .end local v5    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v11    # "ti":I
    .restart local v13    # "flt":Lsun/nio/ch/FileLockTable;
    :goto_b0
    if-nez v6, :cond_b5

    .line 1153
    invoke-virtual {v13, v7}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1154
    :cond_b5
    iget-object v0, v8, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v11}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1156
    :try_start_ba
    invoke-virtual {v8, v6}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_bd
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_ba .. :try_end_bd} :catch_bf

    .line 1159
    nop

    .line 1161
    return-object v7

    .line 1157
    :catch_bf
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1158
    .local v0, "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v1

    .line 1152
    .end local v0    # "e":Ljava/nio/channels/ClosedByInterruptException;
    .end local v11    # "ti":I
    .end local v13    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v3    # "ti":I
    .restart local v5    # "flt":Lsun/nio/ch/FileLockTable;
    :catchall_c8
    move-exception v0

    move v11, v3

    move-object v13, v5

    move v12, v6

    move-object v14, v7

    move v1, v11

    .end local v3    # "ti":I
    .end local v5    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v6    # "completed":Z
    .end local v7    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v11    # "ti":I
    .restart local v12    # "completed":Z
    .restart local v13    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v14    # "fli":Lsun/nio/ch/FileLockImpl;
    goto :goto_d3

    .end local v11    # "ti":I
    .end local v12    # "completed":Z
    .end local v13    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v14    # "fli":Lsun/nio/ch/FileLockImpl;
    .local v1, "ti":I
    .restart local v5    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v6    # "completed":Z
    .restart local v7    # "fli":Lsun/nio/ch/FileLockImpl;
    :catchall_cf
    move-exception v0

    move-object v13, v5

    move v12, v6

    move-object v14, v7

    .end local v5    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v6    # "completed":Z
    .end local v7    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v12    # "completed":Z
    .restart local v13    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v14    # "fli":Lsun/nio/ch/FileLockImpl;
    :goto_d3
    if-nez v12, :cond_d8

    .line 1153
    invoke-virtual {v13, v14}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1154
    :cond_d8
    iget-object v2, v8, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1156
    :try_start_dd
    invoke-virtual {v8, v12}, Lsun/nio/ch/FileChannelImpl;->end(Z)V
    :try_end_e0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_dd .. :try_end_e0} :catch_e2

    .line 1159
    nop

    .line 1160
    throw v0

    .line 1157
    :catch_e2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1158
    .restart local v0    # "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v2, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v2}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v2
.end method

.method public whitelist core-platform-api test-api map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .registers 37
    .param p1, "mode"    # Ljava/nio/channels/FileChannel$MapMode;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p4

    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 911
    if-eqz v8, :cond_1da

    .line 913
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1d2

    .line 915
    cmp-long v2, v9, v0

    if-ltz v2, :cond_1ca

    .line 917
    add-long v2, p2, v9

    cmp-long v2, v2, v0

    if-ltz v2, :cond_1c2

    .line 919
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v9, v2

    if-gtz v2, :cond_1ba

    .line 922
    const/4 v2, -0x1

    .line 923
    .local v2, "imode":I
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-ne v8, v3, :cond_2a

    .line 924
    const/4 v2, 0x0

    move v11, v2

    goto :goto_39

    .line 925
    :cond_2a
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    if-ne v8, v3, :cond_31

    .line 926
    const/4 v2, 0x1

    move v11, v2

    goto :goto_39

    .line 927
    :cond_31
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

    if-ne v8, v3, :cond_38

    .line 928
    const/4 v2, 0x2

    move v11, v2

    goto :goto_39

    .line 927
    :cond_38
    move v11, v2

    .line 929
    .end local v2    # "imode":I
    .local v11, "imode":I
    :goto_39
    nop

    .line 930
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-eq v8, v2, :cond_49

    iget-boolean v2, v7, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v2, :cond_43

    goto :goto_49

    .line 931
    :cond_43
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 932
    :cond_49
    :goto_49
    iget-boolean v2, v7, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v2, :cond_1b4

    .line 935
    const-wide/16 v12, -0x1

    .line 936
    .local v12, "addr":J
    const/4 v2, -0x1

    .line 938
    .local v2, "ti":I
    :try_start_50
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 939
    iget-object v3, v7, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v3
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_1a6

    move v14, v3

    .line 940
    .end local v2    # "ti":I
    .local v14, "ti":I
    :try_start_5a
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v2
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_1a3

    const/4 v3, 0x0

    if-nez v2, :cond_6f

    .line 941
    nop

    .line 1033
    iget-object v0, v7, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v14}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1034
    invoke-static {v12, v13}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v0

    invoke-virtual {v7, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 941
    return-object v3

    .line 945
    :cond_6f
    :try_start_6f
    iget-object v2, v7, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v4, v7, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v4}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v4

    move-wide v15, v4

    .line 946
    .local v15, "filesize":J
    const-wide/16 v4, -0x3

    cmp-long v2, v15, v4

    if-nez v2, :cond_84

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 947
    :cond_84
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v2
    :try_end_88
    .catchall {:try_start_6f .. :try_end_88} :catchall_1a3

    if-nez v2, :cond_98

    .line 948
    nop

    .line 1033
    iget-object v0, v7, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v14}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1034
    invoke-static {v12, v13}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v0

    invoke-virtual {v7, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 948
    return-object v3

    .line 950
    :cond_98
    add-long v4, p2, v9

    cmp-long v2, v15, v4

    if-gez v2, :cond_d1

    .line 951
    :try_start_9e
    iget-boolean v2, v7, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v2, :cond_c9

    .line 957
    :cond_a2
    iget-object v2, v7, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v4, v7, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    add-long v5, p2, v9

    invoke-virtual {v2, v4, v5, v6}, Lsun/nio/ch/FileDispatcher;->truncate(Ljava/io/FileDescriptor;J)I

    move-result v2

    .line 958
    .local v2, "rv":I
    const/4 v4, -0x3

    if-ne v2, v4, :cond_b5

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_a2

    .line 959
    :cond_b5
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v4
    :try_end_b9
    .catchall {:try_start_9e .. :try_end_b9} :catchall_1a3

    if-nez v4, :cond_d1

    .line 960
    nop

    .line 1033
    iget-object v0, v7, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v14}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1034
    invoke-static {v12, v13}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v0

    invoke-virtual {v7, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 960
    return-object v3

    .line 952
    .end local v2    # "rv":I
    :cond_c9
    :try_start_c9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Channel not open for writing - cannot extend file to required size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v11    # "imode":I
    .end local v12    # "addr":J
    .end local v14    # "ti":I
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .end local p2    # "position":J
    .end local p4    # "size":J
    throw v0

    .line 962
    .restart local v11    # "imode":I
    .restart local v12    # "addr":J
    .restart local v14    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .restart local p2    # "position":J
    .restart local p4    # "size":J
    :cond_d1
    cmp-long v0, v9, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-nez v0, :cond_104

    .line 963
    const-wide/16 v12, 0x0

    .line 965
    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    .line 973
    .local v4, "dummy":Ljava/io/FileDescriptor;
    new-instance v19, Ljava/nio/DirectByteBuffer;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    iget-boolean v0, v7, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_f0

    if-nez v11, :cond_ed

    goto :goto_f0

    :cond_ed
    move/from16 v6, v17

    goto :goto_f2

    :cond_f0
    :goto_f0
    move/from16 v6, v18

    :goto_f2
    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v6}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_f7
    .catchall {:try_start_c9 .. :try_end_f7} :catchall_1a3

    .line 1033
    iget-object v0, v7, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v14}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1034
    invoke-static {v12, v13}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v0

    invoke-virtual {v7, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 973
    return-object v19

    .line 977
    .end local v4    # "dummy":Ljava/io/FileDescriptor;
    :cond_104
    :try_start_104
    sget-wide v0, Lsun/nio/ch/FileChannelImpl;->allocationGranularity:J

    rem-long v0, p2, v0
    :try_end_108
    .catchall {:try_start_104 .. :try_end_108} :catchall_1a3

    long-to-int v5, v0

    .line 978
    .local v5, "pagePosition":I
    int-to-long v0, v5

    sub-long v19, p2, v0

    .line 979
    .local v19, "mapPosition":J
    int-to-long v0, v5

    add-long v3, v9, v0

    .line 982
    .local v3, "mapSize":J
    :try_start_10f
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V
    :try_end_116
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10f .. :try_end_116} :catch_128
    .catchall {:try_start_10f .. :try_end_116} :catchall_1a3

    .line 984
    move-object/from16 v1, p0

    move v2, v11

    move-wide/from16 v29, v3

    .end local v3    # "mapSize":J
    .local v29, "mapSize":J
    move-wide/from16 v3, v19

    move v8, v5

    .end local v5    # "pagePosition":I
    .local v8, "pagePosition":I
    move-wide/from16 v5, v29

    :try_start_120
    invoke-direct/range {v1 .. v6}, Lsun/nio/ch/FileChannelImpl;->map0(IJJ)J

    move-result-wide v0
    :try_end_124
    .catch Ljava/lang/OutOfMemoryError; {:try_start_120 .. :try_end_124} :catch_126
    .catchall {:try_start_120 .. :try_end_124} :catchall_1a3

    .line 1000
    .end local v12    # "addr":J
    .local v0, "addr":J
    move-wide v12, v0

    goto :goto_14d

    .line 985
    .end local v0    # "addr":J
    .restart local v12    # "addr":J
    :catch_126
    move-exception v0

    goto :goto_12c

    .end local v8    # "pagePosition":I
    .end local v29    # "mapSize":J
    .restart local v3    # "mapSize":J
    .restart local v5    # "pagePosition":I
    :catch_128
    move-exception v0

    move-wide/from16 v29, v3

    move v8, v5

    .end local v3    # "mapSize":J
    .end local v5    # "pagePosition":I
    .restart local v8    # "pagePosition":I
    .restart local v29    # "mapSize":J
    :goto_12c
    move-object/from16 v21, v0

    .line 988
    .local v21, "x":Ljava/lang/OutOfMemoryError;
    :try_start_12e
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_131
    .catchall {:try_start_12e .. :try_end_131} :catchall_1a3

    .line 990
    const-wide/16 v0, 0x64

    :try_start_133
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_136
    .catch Ljava/lang/InterruptedException; {:try_start_133 .. :try_end_136} :catch_137
    .catchall {:try_start_133 .. :try_end_136} :catchall_1a3

    .line 993
    goto :goto_141

    .line 991
    :catch_137
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 992
    .local v0, "y":Ljava/lang/InterruptedException;
    :try_start_13a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_141
    .catchall {:try_start_13a .. :try_end_141} :catchall_1a3

    .line 995
    .end local v0    # "y":Ljava/lang/InterruptedException;
    :goto_141
    move-object/from16 v1, p0

    move v2, v11

    move-wide/from16 v3, v19

    move-wide/from16 v5, v29

    :try_start_148
    invoke-direct/range {v1 .. v6}, Lsun/nio/ch/FileChannelImpl;->map0(IJJ)J

    move-result-wide v0
    :try_end_14c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_148 .. :try_end_14c} :catch_196
    .catchall {:try_start_148 .. :try_end_14c} :catchall_1a3

    .line 999
    .end local v12    # "addr":J
    .local v0, "addr":J
    move-wide v12, v0

    .line 1006
    .end local v0    # "addr":J
    .end local v21    # "x":Ljava/lang/OutOfMemoryError;
    .restart local v12    # "addr":J
    :goto_14d
    :try_start_14d
    iget-object v0, v7, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v1, v7, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lsun/nio/ch/FileDispatcher;->duplicateForMapping(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v27
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_155} :catch_18e
    .catchall {:try_start_14d .. :try_end_155} :catchall_1a3

    .line 1010
    .local v27, "mfd":Ljava/io/FileDescriptor;
    nop

    .line 1012
    nop

    .line 1013
    nop

    .line 1014
    long-to-int v6, v9

    .line 1015
    .local v6, "isize":I
    :try_start_159
    new-instance v5, Lsun/nio/ch/FileChannelImpl$Unmapper;

    const/16 v28, 0x0

    move-object/from16 v21, v5

    move-wide/from16 v22, v12

    move-wide/from16 v24, v29

    move/from16 v26, v6

    invoke-direct/range {v21 .. v28}, Lsun/nio/ch/FileChannelImpl$Unmapper;-><init>(JJILjava/io/FileDescriptor;Lsun/nio/ch/FileChannelImpl$1;)V

    .line 1030
    .local v5, "um":Lsun/nio/ch/FileChannelImpl$Unmapper;
    new-instance v21, Ljava/nio/DirectByteBuffer;

    int-to-long v0, v8

    add-long v2, v12, v0

    iget-boolean v0, v7, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_173

    if-nez v11, :cond_175

    :cond_173
    move/from16 v17, v18

    :cond_175
    move-object/from16 v0, v21

    move v1, v6

    move-object/from16 v4, v27

    move/from16 v18, v6

    .end local v6    # "isize":I
    .local v18, "isize":I
    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_181
    .catchall {:try_start_159 .. :try_end_181} :catchall_1a3

    .line 1033
    iget-object v0, v7, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v14}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1034
    invoke-static {v12, v13}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v0

    invoke-virtual {v7, v0}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 1030
    return-object v21

    .line 1007
    .end local v5    # "um":Lsun/nio/ch/FileChannelImpl$Unmapper;
    .end local v18    # "isize":I
    .end local v27    # "mfd":Ljava/io/FileDescriptor;
    :catch_18e
    move-exception v0

    .line 1008
    .local v0, "ioe":Ljava/io/IOException;
    move-wide/from16 v1, v29

    .end local v29    # "mapSize":J
    .local v1, "mapSize":J
    :try_start_191
    invoke-static {v12, v13, v1, v2}, Lsun/nio/ch/FileChannelImpl;->unmap0(JJ)I

    .line 1009
    nop

    .end local v11    # "imode":I
    .end local v12    # "addr":J
    .end local v14    # "ti":I
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .end local p2    # "position":J
    .end local p4    # "size":J
    throw v0

    .line 996
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "mapSize":J
    .restart local v11    # "imode":I
    .restart local v12    # "addr":J
    .restart local v14    # "ti":I
    .restart local v21    # "x":Ljava/lang/OutOfMemoryError;
    .restart local v29    # "mapSize":J
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .restart local p2    # "position":J
    .restart local p4    # "size":J
    :catch_196
    move-exception v0

    move-wide/from16 v1, v29

    move-object v3, v0

    .end local v29    # "mapSize":J
    .restart local v1    # "mapSize":J
    move-object v0, v3

    .line 998
    .local v0, "y":Ljava/lang/OutOfMemoryError;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Map failed"

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v11    # "imode":I
    .end local v12    # "addr":J
    .end local v14    # "ti":I
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .end local p2    # "position":J
    .end local p4    # "size":J
    throw v3
    :try_end_1a3
    .catchall {:try_start_191 .. :try_end_1a3} :catchall_1a3

    .line 1033
    .end local v0    # "y":Ljava/lang/OutOfMemoryError;
    .end local v1    # "mapSize":J
    .end local v8    # "pagePosition":I
    .end local v15    # "filesize":J
    .end local v19    # "mapPosition":J
    .end local v21    # "x":Ljava/lang/OutOfMemoryError;
    .restart local v11    # "imode":I
    .restart local v12    # "addr":J
    .restart local v14    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .restart local p2    # "position":J
    .restart local p4    # "size":J
    :catchall_1a3
    move-exception v0

    move v2, v14

    goto :goto_1a7

    .end local v14    # "ti":I
    .local v2, "ti":I
    :catchall_1a6
    move-exception v0

    :goto_1a7
    iget-object v1, v7, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1034
    invoke-static {v12, v13}, Lsun/nio/ch/IOStatus;->checkAll(J)Z

    move-result v1

    invoke-virtual {v7, v1}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 1035
    throw v0

    .line 933
    .end local v2    # "ti":I
    .end local v12    # "addr":J
    :cond_1b4
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 920
    .end local v11    # "imode":I
    :cond_1ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size exceeds Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 918
    :cond_1c2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position + size overflow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_1ca
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_1d2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 912
    :cond_1da
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Mode is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api position()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 292
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    const-wide/16 v1, -0x1

    .line 294
    .local v1, "p":J
    const/4 v3, -0x1

    .line 296
    .local v3, "ti":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    :try_start_d
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 297
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v8

    move v3, v8

    .line 298
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_6e

    if-nez v8, :cond_2f

    .line 299
    const-wide/16 v8, 0x0

    .line 313
    :try_start_1f
    iget-object v10, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v10, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 314
    cmp-long v6, v1, v6

    if-lez v6, :cond_29

    goto :goto_2a

    :cond_29
    move v4, v5

    :goto_2a
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 315
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_80

    .line 299
    return-wide v8

    .line 303
    :cond_2f
    :try_start_2f
    iget-boolean v8, p0, Lsun/nio/ch/FileChannelImpl;->append:Z

    if-eqz v8, :cond_3a

    .line 304
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v8

    invoke-interface {v8}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 309
    :cond_3a
    iget-boolean v8, p0, Lsun/nio/ch/FileChannelImpl;->append:Z

    if-eqz v8, :cond_47

    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v8, v9}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v8

    goto :goto_4d

    :cond_47
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v8, v6, v7}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v8

    :goto_4d
    move-wide v1, v8

    .line 310
    const-wide/16 v8, -0x3

    cmp-long v8, v1, v8

    if-nez v8, :cond_5a

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 311
    :cond_5a
    invoke-static {v1, v2}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v8
    :try_end_5e
    .catchall {:try_start_2f .. :try_end_5e} :catchall_6e

    .line 313
    :try_start_5e
    iget-object v10, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v10, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 314
    cmp-long v6, v1, v6

    if-lez v6, :cond_68

    goto :goto_69

    :cond_68
    move v4, v5

    :goto_69
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 315
    monitor-exit v0

    .line 311
    return-wide v8

    .line 313
    :catchall_6e
    move-exception v8

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v9, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 314
    cmp-long v6, v1, v6

    if-lez v6, :cond_79

    goto :goto_7a

    :cond_79
    move v4, v5

    :goto_7a
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 315
    nop

    .line 316
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    throw v8

    .line 317
    .end local v1    # "p":J
    .end local v3    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    :catchall_80
    move-exception v1

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_5e .. :try_end_82} :catchall_80

    throw v1
.end method

.method public whitelist core-platform-api test-api position(J)Ljava/nio/channels/FileChannel;
    .registers 13
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 322
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_74

    .line 324
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    const-wide/16 v1, -0x1

    .line 326
    .local v1, "p":J
    const/4 v3, -0x1

    .line 328
    .local v3, "ti":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    :try_start_13
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 329
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v8

    move v3, v8

    .line 330
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_5f

    if-nez v8, :cond_34

    .line 331
    const/4 v8, 0x0

    .line 341
    :try_start_24
    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v9, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 342
    cmp-long v6, v1, v6

    if-lez v6, :cond_2e

    goto :goto_2f

    :cond_2e
    move v4, v5

    :goto_2f
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 343
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_71

    .line 331
    return-object v8

    .line 335
    :cond_34
    :try_start_34
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v8

    invoke-interface {v8}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 337
    :cond_3b
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v8, p1, p2}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v8

    move-wide v1, v8

    .line 338
    const-wide/16 v8, -0x3

    cmp-long v8, v1, v8

    if-nez v8, :cond_4e

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_5f

    if-nez v8, :cond_3b

    .line 339
    :cond_4e
    nop

    .line 341
    :try_start_4f
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 342
    cmp-long v6, v1, v6

    if-lez v6, :cond_59

    goto :goto_5a

    :cond_59
    move v4, v5

    :goto_5a
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 343
    monitor-exit v0

    .line 339
    return-object p0

    .line 341
    :catchall_5f
    move-exception v8

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v9, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 342
    cmp-long v6, v1, v6

    if-lez v6, :cond_6a

    goto :goto_6b

    :cond_6a
    move v4, v5

    :goto_6b
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 343
    nop

    .line 344
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "newPosition":J
    throw v8

    .line 345
    .end local v1    # "p":J
    .end local v3    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "newPosition":J
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_4f .. :try_end_73} :catchall_71

    throw v1

    .line 323
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api position(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api read(Ljava/nio/ByteBuffer;)I
    .registers 11
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 186
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v0, :cond_66

    .line 188
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "n":I
    const/4 v2, -0x1

    .line 192
    .local v2, "ti":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_e
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 193
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v5

    move v2, v5

    .line 194
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v5
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_53

    if-nez v5, :cond_2d

    .line 195
    nop

    .line 201
    :try_start_1f
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 202
    if-lez v1, :cond_27

    goto :goto_28

    :cond_27
    move v3, v4

    :goto_28
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 203
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_63

    .line 195
    return v4

    .line 197
    :cond_2d
    :try_start_2d
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v5, p1, v6, v7, v8}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v5

    move v1, v5

    .line 198
    const/4 v5, -0x3

    if-ne v1, v5, :cond_41

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 199
    :cond_41
    invoke-static {v1}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v5
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_53

    .line 201
    :try_start_45
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 202
    if-lez v1, :cond_4d

    goto :goto_4e

    :cond_4d
    move v3, v4

    :goto_4e
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 203
    monitor-exit v0

    .line 199
    return v5

    .line 201
    :catchall_53
    move-exception v5

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 202
    if-lez v1, :cond_5c

    goto :goto_5d

    :cond_5c
    move v3, v4

    :goto_5d
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 203
    nop

    .line 204
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    throw v5

    .line 205
    .end local v1    # "n":I
    .end local v2    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_45 .. :try_end_65} :catchall_63

    throw v1

    .line 187
    :cond_66
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api read(Ljava/nio/ByteBuffer;J)I
    .registers 6
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 766
    if-eqz p1, :cond_36

    .line 768
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2e

    .line 770
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v0, :cond_28

    .line 772
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 773
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v0}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 774
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_1a
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->readInternal(Ljava/nio/ByteBuffer;J)I

    move-result v1

    monitor-exit v0

    return v1

    .line 776
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw v1

    .line 778
    :cond_23
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->readInternal(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 771
    :cond_28
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 769
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_36
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api read([Ljava/nio/ByteBuffer;II)J
    .registers 15
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    if-ltz p2, :cond_7e

    if-ltz p3, :cond_7e

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_7e

    .line 213
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 214
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v0, :cond_78

    .line 216
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    const-wide/16 v1, 0x0

    .line 218
    .local v1, "n":J
    const/4 v3, -0x1

    .line 220
    .local v3, "ti":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    :try_start_19
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 221
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v8

    move v3, v8

    .line 222
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_63

    if-nez v8, :cond_3a

    .line 223
    nop

    .line 229
    :try_start_2a
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 230
    cmp-long v8, v1, v6

    if-lez v8, :cond_34

    goto :goto_35

    :cond_34
    move v4, v5

    :goto_35
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 231
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_75

    .line 223
    return-wide v6

    .line 225
    :cond_3a
    :try_start_3a
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v8, p1, p2, p3, v9}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v8

    move-wide v1, v8

    .line 226
    const-wide/16 v8, -0x3

    cmp-long v8, v1, v8

    if-nez v8, :cond_4f

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 227
    :cond_4f
    invoke-static {v1, v2}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v8
    :try_end_53
    .catchall {:try_start_3a .. :try_end_53} :catchall_63

    .line 229
    :try_start_53
    iget-object v10, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v10, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 230
    cmp-long v6, v1, v6

    if-lez v6, :cond_5d

    goto :goto_5e

    :cond_5d
    move v4, v5

    :goto_5e
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 231
    monitor-exit v0

    .line 227
    return-wide v8

    .line 229
    :catchall_63
    move-exception v8

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v9, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 230
    cmp-long v6, v1, v6

    if-lez v6, :cond_6e

    goto :goto_6f

    :cond_6e
    move v4, v5

    :goto_6f
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 231
    nop

    .line 232
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v8

    .line 233
    .end local v1    # "n":J
    .end local v3    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_53 .. :try_end_77} :catchall_75

    throw v1

    .line 215
    :cond_78
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 212
    :cond_7e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method blacklist release(Lsun/nio/ch/FileLockImpl;)V
    .registers 9
    .param p1, "fli"    # Lsun/nio/ch/FileLockImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v0

    .line 1206
    .local v0, "ti":I
    :try_start_6
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1207
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->position()J

    move-result-wide v3

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->size()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lsun/nio/ch/FileDispatcher;->release(Ljava/io/FileDescriptor;JJ)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_25

    .line 1209
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1210
    nop

    .line 1211
    nop

    .line 1212
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v1, p1}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1213
    return-void

    .line 1209
    :catchall_25
    move-exception v1

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v0}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1210
    throw v1
.end method

.method public whitelist core-platform-api test-api size()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 350
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    const-wide/16 v1, -0x1

    .line 352
    .local v1, "s":J
    const/4 v3, -0x1

    .line 354
    .local v3, "ti":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    :try_start_d
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 355
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v8

    move v3, v8

    .line 356
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_57

    if-nez v8, :cond_2e

    .line 357
    nop

    .line 363
    :try_start_1e
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 364
    cmp-long v8, v1, v6

    if-lez v8, :cond_28

    goto :goto_29

    :cond_28
    move v4, v5

    :goto_29
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 365
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_69

    .line 357
    return-wide v6

    .line 359
    :cond_2e
    :try_start_2e
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v8, v9}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v8

    move-wide v1, v8

    .line 360
    const-wide/16 v8, -0x3

    cmp-long v8, v1, v8

    if-nez v8, :cond_43

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 361
    :cond_43
    invoke-static {v1, v2}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v8
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_57

    .line 363
    :try_start_47
    iget-object v10, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v10, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 364
    cmp-long v6, v1, v6

    if-lez v6, :cond_51

    goto :goto_52

    :cond_51
    move v4, v5

    :goto_52
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 365
    monitor-exit v0

    .line 361
    return-wide v8

    .line 363
    :catchall_57
    move-exception v8

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v9, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 364
    cmp-long v6, v1, v6

    if-lez v6, :cond_62

    goto :goto_63

    :cond_62
    move v4, v5

    :goto_63
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 365
    nop

    .line 366
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    throw v8

    .line 367
    .end local v1    # "s":J
    .end local v3    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_47 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public whitelist core-platform-api test-api transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .registers 13
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 750
    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 752
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_3a

    .line 754
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_34

    cmp-long v2, p4, v0

    if-ltz v2, :cond_34

    .line 756
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-lez v2, :cond_20

    .line 757
    return-wide v0

    .line 758
    :cond_20
    instance-of v0, p1, Lsun/nio/ch/FileChannelImpl;

    if-eqz v0, :cond_2f

    .line 759
    move-object v2, p1

    check-cast v2, Lsun/nio/ch/FileChannelImpl;

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lsun/nio/ch/FileChannelImpl;->transferFromFileChannel(Lsun/nio/ch/FileChannelImpl;JJ)J

    move-result-wide v0

    return-wide v0

    .line 762
    :cond_2f
    invoke-direct/range {p0 .. p5}, Lsun/nio/ch/FileChannelImpl;->transferFromArbitraryChannel(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v0

    return-wide v0

    .line 755
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 753
    :cond_3a
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 751
    :cond_40
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .registers 25
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-object/from16 v11, p5

    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 640
    invoke-interface/range {p5 .. p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 642
    iget-boolean v0, v6, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v0, :cond_7a

    .line 644
    instance-of v0, v11, Lsun/nio/ch/FileChannelImpl;

    if-eqz v0, :cond_27

    move-object v0, v11

    check-cast v0, Lsun/nio/ch/FileChannelImpl;

    iget-boolean v0, v0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_21

    goto :goto_27

    .line 646
    :cond_21
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 647
    :cond_27
    :goto_27
    const-wide/16 v12, 0x0

    cmp-long v0, v7, v12

    if-ltz v0, :cond_74

    cmp-long v0, v9, v12

    if-ltz v0, :cond_74

    .line 649
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->size()J

    move-result-wide v14

    .line 650
    .local v14, "sz":J
    cmp-long v0, v7, v14

    if-lez v0, :cond_3a

    .line 651
    return-wide v12

    .line 652
    :cond_3a
    const-wide/32 v0, 0x7fffffff

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 653
    .local v0, "icount":I
    sub-long v1, v14, v7

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-gez v1, :cond_4e

    .line 654
    sub-long v1, v14, v7

    long-to-int v0, v1

    move v5, v0

    goto :goto_4f

    .line 653
    :cond_4e
    move v5, v0

    .line 659
    .end local v0    # "icount":I
    .local v5, "icount":I
    :goto_4f
    invoke-direct {v6, v7, v8, v5, v11}, Lsun/nio/ch/FileChannelImpl;->transferToDirectly(JILjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    move-wide/from16 v16, v0

    .local v16, "n":J
    cmp-long v0, v0, v12

    if-ltz v0, :cond_5a

    .line 660
    return-wide v16

    .line 663
    :cond_5a
    int-to-long v3, v5

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v18, v5

    .end local v5    # "icount":I
    .local v18, "icount":I
    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/FileChannelImpl;->transferToTrustedChannel(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    move-wide v2, v0

    .end local v16    # "n":J
    .local v2, "n":J
    cmp-long v0, v0, v12

    if-ltz v0, :cond_6d

    .line 664
    return-wide v2

    .line 667
    :cond_6d
    move/from16 v0, v18

    .end local v18    # "icount":I
    .restart local v0    # "icount":I
    invoke-direct {v6, v7, v8, v0, v11}, Lsun/nio/ch/FileChannelImpl;->transferToArbitraryChannel(JILjava/nio/channels/WritableByteChannel;)J

    move-result-wide v4

    return-wide v4

    .line 648
    .end local v0    # "icount":I
    .end local v2    # "n":J
    .end local v14    # "sz":J
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 643
    :cond_7a
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 641
    :cond_80
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api truncate(J)Ljava/nio/channels/FileChannel;
    .registers 22
    .param p1, "newSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 372
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_fd

    .line 374
    iget-boolean v0, v1, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_f7

    .line 376
    iget-object v4, v1, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v4

    .line 377
    const/4 v5, -0x1

    .line 378
    .local v5, "rv":I
    const-wide/16 v6, -0x1

    .line 379
    .local v6, "p":J
    const/4 v8, -0x1

    .line 380
    .local v8, "ti":I
    const-wide/16 v9, -0x1

    .line 382
    .local v9, "rp":J
    const/4 v13, -0x1

    :try_start_1b
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 383
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v0

    move v8, v0

    .line 384
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_e3

    const/4 v14, 0x0

    if-nez v0, :cond_3c

    .line 385
    nop

    .line 420
    :try_start_2d
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v8}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 421
    if-le v5, v13, :cond_36

    const/4 v11, 0x1

    goto :goto_37

    :cond_36
    const/4 v11, 0x0

    :goto_37
    invoke-virtual {v1, v11}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 422
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_f4

    .line 385
    return-object v14

    .line 390
    :cond_3c
    :try_start_3c
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v15, v1, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v15}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v15

    .line 391
    .local v15, "size":J
    const-wide/16 v17, -0x3

    cmp-long v0, v15, v17

    if-nez v0, :cond_50

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 392
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_e3

    if-nez v0, :cond_66

    .line 393
    nop

    .line 420
    :try_start_57
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v8}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 421
    if-le v5, v13, :cond_60

    const/4 v11, 0x1

    goto :goto_61

    :cond_60
    const/4 v11, 0x0

    :goto_61
    invoke-virtual {v1, v11}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 422
    monitor-exit v4
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_f4

    .line 393
    return-object v14

    .line 397
    :cond_66
    :try_start_66
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v11, -0x1

    invoke-direct {v1, v0, v11, v12}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v11

    move-wide v6, v11

    .line 398
    cmp-long v0, v6, v17

    if-nez v0, :cond_79

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_66

    .line 399
    :cond_79
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_7d
    .catchall {:try_start_66 .. :try_end_7d} :catchall_e3

    if-nez v0, :cond_8f

    .line 400
    nop

    .line 420
    :try_start_80
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v8}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 421
    if-le v5, v13, :cond_89

    const/4 v11, 0x1

    goto :goto_8a

    :cond_89
    const/4 v11, 0x0

    :goto_8a
    invoke-virtual {v1, v11}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 422
    monitor-exit v4
    :try_end_8e
    .catchall {:try_start_80 .. :try_end_8e} :catchall_f4

    .line 400
    return-object v14

    .line 401
    :cond_8f
    nop

    .line 404
    cmp-long v0, v2, v15

    if-gez v0, :cond_bc

    .line 406
    :cond_94
    :try_start_94
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v11, v1, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v11, v2, v3}, Lsun/nio/ch/FileDispatcher;->truncate(Ljava/io/FileDescriptor;J)I

    move-result v0

    move v5, v0

    .line 407
    const/4 v0, -0x3

    if-ne v5, v0, :cond_a6

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_94

    .line 408
    :cond_a6
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_aa
    .catchall {:try_start_94 .. :try_end_aa} :catchall_e3

    if-nez v0, :cond_bc

    .line 409
    nop

    .line 420
    :try_start_ad
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v8}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 421
    if-le v5, v13, :cond_b6

    const/4 v11, 0x1

    goto :goto_b7

    :cond_b6
    const/4 v11, 0x0

    :goto_b7
    invoke-virtual {v1, v11}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 422
    monitor-exit v4
    :try_end_bb
    .catchall {:try_start_ad .. :try_end_bb} :catchall_f4

    .line 409
    return-object v14

    .line 413
    :cond_bc
    cmp-long v0, v6, v2

    if-lez v0, :cond_c2

    .line 414
    move-wide/from16 v6, p1

    .line 416
    :cond_c2
    :try_start_c2
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v1, v0, v6, v7}, Lsun/nio/ch/FileChannelImpl;->position0(Ljava/io/FileDescriptor;J)J

    move-result-wide v11

    move-wide v9, v11

    .line 417
    cmp-long v0, v9, v17

    if-nez v0, :cond_d3

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v0
    :try_end_d1
    .catchall {:try_start_c2 .. :try_end_d1} :catchall_e3

    if-nez v0, :cond_c2

    .line 418
    :cond_d3
    nop

    .line 420
    :try_start_d4
    iget-object v0, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0, v8}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 421
    if-le v5, v13, :cond_dd

    const/4 v11, 0x1

    goto :goto_de

    :cond_dd
    const/4 v11, 0x0

    :goto_de
    invoke-virtual {v1, v11}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 422
    monitor-exit v4

    .line 418
    return-object v1

    .line 420
    .end local v15    # "size":J
    :catchall_e3
    move-exception v0

    iget-object v11, v1, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v11, v8}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 421
    if-le v5, v13, :cond_ed

    const/4 v11, 0x1

    goto :goto_ee

    :cond_ed
    const/4 v11, 0x0

    :goto_ee
    invoke-virtual {v1, v11}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 422
    nop

    .line 423
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "newSize":J
    throw v0

    .line 424
    .end local v5    # "rv":I
    .end local v6    # "p":J
    .end local v8    # "ti":I
    .end local v9    # "rp":J
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "newSize":J
    :catchall_f4
    move-exception v0

    monitor-exit v4
    :try_end_f6
    .catchall {:try_start_d4 .. :try_end_f6} :catchall_f4

    throw v0

    .line 375
    :cond_f7
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 373
    :cond_fd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Negative size"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/FileChannelImpl;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api tryLock(JJZ)Ljava/nio/channels/FileLock;
    .registers 23
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1167
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1168
    if-eqz p5, :cond_12

    iget-boolean v0, v8, Lsun/nio/ch/FileChannelImpl;->readable:Z

    if-eqz v0, :cond_c

    goto :goto_12

    .line 1169
    :cond_c
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 1170
    :cond_12
    :goto_12
    if-nez p5, :cond_1f

    iget-boolean v0, v8, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_19

    goto :goto_1f

    .line 1171
    :cond_19
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 1172
    :cond_1f
    :goto_1f
    new-instance v0, Lsun/nio/ch/FileLockImpl;

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    move-object v7, v0

    .line 1173
    .local v7, "fli":Lsun/nio/ch/FileLockImpl;
    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->fileLockTable()Lsun/nio/ch/FileLockTable;

    move-result-object v5

    .line 1174
    .local v5, "flt":Lsun/nio/ch/FileLockTable;
    invoke-virtual {v5, v7}, Lsun/nio/ch/FileLockTable;->add(Ljava/nio/channels/FileLock;)V

    .line 1177
    iget-object v0, v8, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v6

    .line 1180
    .local v6, "ti":I
    :try_start_3b
    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 1181
    iget-object v9, v8, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v10, v8, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v11, 0x0

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    move/from16 v16, p5

    invoke-virtual/range {v9 .. v16}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I

    move-result v0
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_4d} :catch_8d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_88

    .line 1185
    .local v0, "result":I
    nop

    .line 1186
    const/4 v1, -0x1

    if-ne v0, v1, :cond_60

    .line 1187
    :try_start_51
    invoke-virtual {v5, v7}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5b

    .line 1188
    const/4 v1, 0x0

    .line 1199
    iget-object v2, v8, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v6}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1188
    return-object v1

    .line 1199
    .end local v0    # "result":I
    :catchall_5b
    move-exception v0

    move-object v11, v5

    move v12, v6

    move-object v13, v7

    goto :goto_97

    .line 1190
    .restart local v0    # "result":I
    :cond_60
    const/4 v1, 0x1

    if-ne v0, v1, :cond_80

    .line 1191
    nop

    .line 1192
    :try_start_64
    new-instance v9, Lsun/nio/ch/FileLockImpl;
    :try_end_66
    .catchall {:try_start_64 .. :try_end_66} :catchall_88

    const/4 v10, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object v11, v5

    move v12, v6

    .end local v5    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v6    # "ti":I
    .local v11, "flt":Lsun/nio/ch/FileLockTable;
    .local v12, "ti":I
    move-wide/from16 v5, p3

    move-object v13, v7

    .end local v7    # "fli":Lsun/nio/ch/FileLockImpl;
    .local v13, "fli":Lsun/nio/ch/FileLockImpl;
    move v7, v10

    :try_start_72
    invoke-direct/range {v1 .. v7}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    move-object v1, v9

    .line 1194
    .local v1, "fli2":Lsun/nio/ch/FileLockImpl;
    invoke-virtual {v11, v13, v1}, Lsun/nio/ch/FileLockTable;->replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_96

    .line 1195
    nop

    .line 1199
    iget-object v2, v8, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1195
    return-object v1

    .line 1197
    .end local v1    # "fli2":Lsun/nio/ch/FileLockImpl;
    .end local v11    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v12    # "ti":I
    .end local v13    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v5    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v6    # "ti":I
    .restart local v7    # "fli":Lsun/nio/ch/FileLockImpl;
    :cond_80
    move v12, v6

    move-object v13, v7

    .line 1199
    .end local v6    # "ti":I
    .end local v7    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v12    # "ti":I
    .restart local v13    # "fli":Lsun/nio/ch/FileLockImpl;
    iget-object v1, v8, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1197
    return-object v13

    .line 1199
    .end local v0    # "result":I
    .end local v12    # "ti":I
    .end local v13    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v6    # "ti":I
    .restart local v7    # "fli":Lsun/nio/ch/FileLockImpl;
    :catchall_88
    move-exception v0

    move-object v11, v5

    move v12, v6

    move-object v13, v7

    .end local v5    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v6    # "ti":I
    .end local v7    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v11    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v12    # "ti":I
    .restart local v13    # "fli":Lsun/nio/ch/FileLockImpl;
    goto :goto_97

    .line 1182
    .end local v11    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v12    # "ti":I
    .end local v13    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local v5    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v6    # "ti":I
    .restart local v7    # "fli":Lsun/nio/ch/FileLockImpl;
    :catch_8d
    move-exception v0

    move-object v11, v5

    move v12, v6

    move-object v13, v7

    .line 1183
    .end local v5    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v6    # "ti":I
    .end local v7    # "fli":Lsun/nio/ch/FileLockImpl;
    .local v0, "e":Ljava/io/IOException;
    .restart local v11    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v12    # "ti":I
    .restart local v13    # "fli":Lsun/nio/ch/FileLockImpl;
    :try_start_91
    invoke-virtual {v11, v13}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 1184
    nop

    .end local v11    # "flt":Lsun/nio/ch/FileLockTable;
    .end local v12    # "ti":I
    .end local v13    # "fli":Lsun/nio/ch/FileLockImpl;
    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "position":J
    .end local p3    # "size":J
    .end local p5    # "shared":Z
    throw v0
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_96

    .line 1199
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v11    # "flt":Lsun/nio/ch/FileLockTable;
    .restart local v12    # "ti":I
    .restart local v13    # "fli":Lsun/nio/ch/FileLockImpl;
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "position":J
    .restart local p3    # "size":J
    .restart local p5    # "shared":Z
    :catchall_96
    move-exception v0

    :goto_97
    iget-object v1, v8, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v12}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 1200
    throw v0
.end method

.method public whitelist core-platform-api test-api write(Ljava/nio/ByteBuffer;)I
    .registers 11
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 238
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_66

    .line 240
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "n":I
    const/4 v2, -0x1

    .line 244
    .local v2, "ti":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_e
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 245
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v5

    move v2, v5

    .line 246
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v5
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_53

    if-nez v5, :cond_2d

    .line 247
    nop

    .line 253
    :try_start_1f
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v5, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 254
    if-lez v1, :cond_27

    goto :goto_28

    :cond_27
    move v3, v4

    :goto_28
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 255
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_63

    .line 247
    return v4

    .line 249
    :cond_2d
    :try_start_2d
    iget-object v5, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v5, p1, v6, v7, v8}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v5

    move v1, v5

    .line 250
    const/4 v5, -0x3

    if-ne v1, v5, :cond_41

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 251
    :cond_41
    invoke-static {v1}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v5
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_53

    .line 253
    :try_start_45
    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 254
    if-lez v1, :cond_4d

    goto :goto_4e

    :cond_4d
    move v3, v4

    :goto_4e
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 255
    monitor-exit v0

    .line 251
    return v5

    .line 253
    :catchall_53
    move-exception v5

    iget-object v6, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v6, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 254
    if-lez v1, :cond_5c

    goto :goto_5d

    :cond_5c
    move v3, v4

    :goto_5d
    invoke-virtual {p0, v3}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 255
    nop

    .line 256
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    throw v5

    .line 257
    .end local v1    # "n":I
    .end local v2    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_45 .. :try_end_65} :catchall_63

    throw v1

    .line 239
    :cond_66
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api write(Ljava/nio/ByteBuffer;J)I
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 803
    if-eqz p1, :cond_36

    .line 805
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2e

    .line 807
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_28

    .line 809
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 810
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-virtual {v0}, Lsun/nio/ch/FileDispatcher;->needsPositionLock()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 811
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 812
    :try_start_1a
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->writeInternal(Ljava/nio/ByteBuffer;J)I

    move-result v1

    monitor-exit v0

    return v1

    .line 813
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw v1

    .line 815
    :cond_23
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/FileChannelImpl;->writeInternal(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 808
    :cond_28
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 806
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_36
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api write([Ljava/nio/ByteBuffer;II)J
    .registers 15
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    if-ltz p2, :cond_7e

    if-ltz p3, :cond_7e

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_7e

    .line 265
    invoke-direct {p0}, Lsun/nio/ch/FileChannelImpl;->ensureOpen()V

    .line 266
    iget-boolean v0, p0, Lsun/nio/ch/FileChannelImpl;->writable:Z

    if-eqz v0, :cond_78

    .line 268
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->positionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    const-wide/16 v1, 0x0

    .line 270
    .local v1, "n":J
    const/4 v3, -0x1

    .line 272
    .local v3, "ti":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    :try_start_19
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->begin()V

    .line 273
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v8

    move v3, v8

    .line 274
    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_63

    if-nez v8, :cond_3a

    .line 275
    nop

    .line 281
    :try_start_2a
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v8, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 282
    cmp-long v8, v1, v6

    if-lez v8, :cond_34

    goto :goto_35

    :cond_34
    move v4, v5

    :goto_35
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 283
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_75

    .line 275
    return-wide v6

    .line 277
    :cond_3a
    :try_start_3a
    iget-object v8, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    invoke-static {v8, p1, p2, p3, v9}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v8

    move-wide v1, v8

    .line 278
    const-wide/16 v8, -0x3

    cmp-long v8, v1, v8

    if-nez v8, :cond_4f

    invoke-virtual {p0}, Lsun/nio/ch/FileChannelImpl;->isOpen()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 279
    :cond_4f
    invoke-static {v1, v2}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v8
    :try_end_53
    .catchall {:try_start_3a .. :try_end_53} :catchall_63

    .line 281
    :try_start_53
    iget-object v10, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v10, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 282
    cmp-long v6, v1, v6

    if-lez v6, :cond_5d

    goto :goto_5e

    :cond_5d
    move v4, v5

    :goto_5e
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 283
    monitor-exit v0

    .line 279
    return-wide v8

    .line 281
    :catchall_63
    move-exception v8

    iget-object v9, p0, Lsun/nio/ch/FileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v9, v3}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 282
    cmp-long v6, v1, v6

    if-lez v6, :cond_6e

    goto :goto_6f

    :cond_6e
    move v4, v5

    :goto_6f
    invoke-virtual {p0, v4}, Lsun/nio/ch/FileChannelImpl;->end(Z)V

    .line 283
    nop

    .line 284
    nop

    .end local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v8

    .line 285
    .end local v1    # "n":J
    .end local v3    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/FileChannelImpl;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_53 .. :try_end_77} :catchall_75

    throw v1

    .line 267
    :cond_78
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 264
    :cond_7e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
