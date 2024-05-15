.class Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;
.super Lsun/nio/ch/FileLockTable;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/FileChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleFileLockTable"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final lockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->-assertionsDisabled:Z

    .line 1172
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 1176
    invoke-direct {p0}, Lsun/nio/ch/FileLockTable;-><init>()V

    .line 1174
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    .line 1177
    return-void
.end method

.method private checkList(JJ)V
    .registers 8
    .param p1, "position"    # J
    .param p3, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    .prologue
    .line 1182
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->-assertionsDisabled:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1183
    :cond_12
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "fl$iterator":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileLock;

    .line 1184
    .local v0, "fl":Ljava/nio/channels/FileLock;
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/nio/channels/FileLock;->overlaps(JJ)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1185
    new-instance v2, Ljava/nio/channels/OverlappingFileLockException;

    invoke-direct {v2}, Ljava/nio/channels/OverlappingFileLockException;-><init>()V

    throw v2

    .line 1188
    .end local v0    # "fl":Ljava/nio/channels/FileLock;
    :cond_30
    return-void
.end method


# virtual methods
.method public add(Ljava/nio/channels/FileLock;)V
    .registers 8
    .param p1, "fl"    # Ljava/nio/channels/FileLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    .prologue
    .line 1191
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    monitor-enter v1

    .line 1192
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->checkList(JJ)V

    .line 1193
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    .line 1195
    return-void

    .line 1191
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove(Ljava/nio/channels/FileLock;)V
    .registers 4
    .param p1, "fl"    # Ljava/nio/channels/FileLock;

    .prologue
    .line 1198
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    monitor-enter v1

    .line 1199
    :try_start_3
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 1201
    return-void

    .line 1198
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeAll()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1204
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    monitor-enter v2

    .line 1205
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1206
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/FileLock;>;"
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v2

    .line 1207
    return-object v0

    .line 1204
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/FileLock;>;"
    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    .registers 5
    .param p1, "fl1"    # Ljava/nio/channels/FileLock;
    .param p2, "fl2"    # Ljava/nio/channels/FileLock;

    .prologue
    .line 1212
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    monitor-enter v1

    .line 1213
    :try_start_3
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1214
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v1

    .line 1216
    return-void

    .line 1212
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
