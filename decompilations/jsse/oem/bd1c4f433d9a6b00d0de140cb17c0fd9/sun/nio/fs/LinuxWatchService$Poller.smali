.class Lsun/nio/fs/LinuxWatchService$Poller;
.super Lsun/nio/fs/AbstractPoller;
.source "LinuxWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/LinuxWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Poller"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final IN_ATTRIB:I = 0x4

.field private static final IN_CREATE:I = 0x100

.field private static final IN_DELETE:I = 0x200

.field private static final IN_IGNORED:I = 0x8000

.field private static final IN_MODIFY:I = 0x2

.field private static final IN_MOVED_FROM:I = 0x40

.field private static final IN_MOVED_TO:I = 0x80

.field private static final IN_Q_OVERFLOW:I = 0x4000

.field private static final IN_UNMOUNT:I = 0x2000

.field private static final OFFSETOF_LEN:I

.field private static final OFFSETOF_MASK:I

.field private static final OFFSETOF_NAME:I

.field private static final OFFSETOF_WD:I

.field private static final SIZEOF_INOTIFY_EVENT:I

.field private static final offsets:[I


# instance fields
.field private final address:J

.field private final fs:Lsun/nio/fs/UnixFileSystem;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final ifd:I

.field private final socketpair:[I

.field private final watcher:Lsun/nio/fs/LinuxWatchService;

.field private final wdToKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 164
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-wrap1()I

    move-result v0

    sput v0, Lsun/nio/fs/LinuxWatchService$Poller;->SIZEOF_INOTIFY_EVENT:I

    .line 165
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-wrap0()[I

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxWatchService$Poller;->offsets:[I

    .line 166
    sget-object v0, Lsun/nio/fs/LinuxWatchService$Poller;->offsets:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_WD:I

    .line 167
    sget-object v0, Lsun/nio/fs/LinuxWatchService$Poller;->offsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sput v0, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_MASK:I

    .line 168
    sget-object v0, Lsun/nio/fs/LinuxWatchService$Poller;->offsets:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    sput v0, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_LEN:I

    .line 169
    sget-object v0, Lsun/nio/fs/LinuxWatchService$Poller;->offsets:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    sput v0, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_NAME:I

    .line 155
    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixFileSystem;Lsun/nio/fs/LinuxWatchService;I[I)V
    .registers 9
    .param p1, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .param p2, "watcher"    # Lsun/nio/fs/LinuxWatchService;
    .param p3, "ifd"    # I
    .param p4, "sp"    # [I

    .prologue
    .line 200
    invoke-direct {p0}, Lsun/nio/fs/AbstractPoller;-><init>()V

    .line 198
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->guard:Ldalvik/system/CloseGuard;

    .line 201
    iput-object p1, p0, Lsun/nio/fs/LinuxWatchService$Poller;->fs:Lsun/nio/fs/UnixFileSystem;

    .line 202
    iput-object p2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->watcher:Lsun/nio/fs/LinuxWatchService;

    .line 203
    iput p3, p0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    .line 204
    iput-object p4, p0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    .line 206
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-get1()Lsun/misc/Unsafe;

    move-result-object v0

    const-wide/16 v2, 0x2000

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    iput-wide v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    .line 208
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private maskToEventKind(I)Ljava/nio/file/WatchEvent$Kind;
    .registers 3
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 416
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_7

    .line 417
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    .line 418
    :cond_7
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_e

    .line 419
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    .line 420
    :cond_e
    and-int/lit16 v0, p1, 0x100

    if-lez v0, :cond_15

    .line 421
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    .line 422
    :cond_15
    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_1c

    .line 423
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    .line 424
    :cond_1c
    and-int/lit16 v0, p1, 0x200

    if-lez v0, :cond_23

    .line 425
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    .line 426
    :cond_23
    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_2a

    .line 427
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    return-object v0

    .line 428
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method private processEvent(IILsun/nio/fs/UnixPath;)V
    .registers 12
    .param p1, "wd"    # I
    .param p2, "mask"    # I
    .param p3, "name"    # Lsun/nio/fs/UnixPath;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 436
    and-int/lit16 v4, p2, 0x4000

    if-lez v4, :cond_29

    .line 437
    iget-object v4, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 438
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    .line 439
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    .line 438
    invoke-virtual {v4, v5, v6}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    goto :goto_10

    .line 441
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;>;"
    :cond_28
    return-void

    .line 445
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_29
    iget-object v4, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    .line 446
    .local v2, "key":Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;
    if-nez v2, :cond_38

    .line 447
    return-void

    .line 450
    :cond_38
    const v4, 0x8000

    and-int/2addr v4, p2

    if-lez v4, :cond_4e

    .line 451
    iget-object v4, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-virtual {v2, v7}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->invalidate(Z)V

    .line 453
    invoke-virtual {v2}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->signal()V

    .line 454
    return-void

    .line 458
    :cond_4e
    if-nez p3, :cond_51

    .line 459
    return-void

    .line 462
    :cond_51
    invoke-direct {p0, p2}, Lsun/nio/fs/LinuxWatchService$Poller;->maskToEventKind(I)Ljava/nio/file/WatchEvent$Kind;

    move-result-object v3

    .line 463
    .local v3, "kind":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    if-eqz v3, :cond_5a

    .line 464
    invoke-virtual {v2, v3, p3}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    .line 466
    :cond_5a
    return-void
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
    .line 322
    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 323
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService$Poller;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 325
    :cond_9
    invoke-virtual {p0}, Lsun/nio/fs/LinuxWatchService$Poller;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 327
    invoke-super {p0}, Lsun/nio/fs/AbstractPoller;->finalize()V

    .line 329
    return-void

    .line 326
    :catchall_10
    move-exception v0

    .line 327
    invoke-super {p0}, Lsun/nio/fs/AbstractPoller;->finalize()V

    .line 326
    throw v0
.end method

.method implCancelKey(Ljava/nio/file/WatchKey;)V
    .registers 5
    .param p1, "obj"    # Ljava/nio/file/WatchKey;

    .prologue
    move-object v0, p1

    .line 295
    check-cast v0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    .line 296
    .local v0, "key":Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;
    invoke-virtual {v0}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 297
    iget-object v1, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-virtual {v0}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->descriptor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->invalidate(Z)V

    .line 300
    :cond_1a
    return-void
.end method

.method implCloseAll()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 306
    iget-object v2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    .line 308
    iget-object v2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 309
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    invoke-virtual {v2, v6}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->invalidate(Z)V

    goto :goto_10

    .line 311
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;>;"
    :cond_26
    iget-object v2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 314
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-get1()Lsun/misc/Unsafe;

    move-result-object v2

    iget-wide v4, p0, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    invoke-virtual {v2, v4, v5}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 315
    iget-object v2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 316
    iget-object v2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    aget v2, v2, v6

    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 317
    iget v2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 318
    return-void
.end method

.method varargs implRegister(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/lang/Object;
    .registers 20
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p3, "modifiers"    # [Ljava/nio/file/WatchEvent$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    move-object/from16 v4, p1

    .line 226
    check-cast v4, Lsun/nio/fs/UnixPath;

    .line 228
    .local v4, "dir":Lsun/nio/fs/UnixPath;
    const/4 v8, 0x0

    .line 229
    .local v8, "mask":I
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "event$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/WatchEvent$Kind;

    .line 230
    .local v5, "event":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    sget-object v12, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    if-ne v5, v12, :cond_1c

    .line 231
    or-int/lit16 v8, v8, 0x180

    .line 232
    goto :goto_9

    .line 234
    :cond_1c
    sget-object v12, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    if-ne v5, v12, :cond_23

    .line 235
    or-int/lit16 v8, v8, 0x240

    .line 236
    goto :goto_9

    .line 238
    :cond_23
    sget-object v12, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-ne v5, v12, :cond_9

    .line 239
    or-int/lit8 v8, v8, 0x6

    .line 240
    goto :goto_9

    .line 245
    .end local v5    # "event":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    :cond_2a
    move-object/from16 v0, p3

    array-length v12, v0

    if-lez v12, :cond_4f

    .line 246
    const/4 v12, 0x0

    move-object/from16 v0, p3

    array-length v13, v0

    :goto_33
    if-ge v12, v13, :cond_4f

    aget-object v9, p3, v12

    .line 247
    .local v9, "modifier":Ljava/nio/file/WatchEvent$Modifier;
    if-nez v9, :cond_3f

    .line 248
    new-instance v12, Ljava/lang/NullPointerException;

    invoke-direct {v12}, Ljava/lang/NullPointerException;-><init>()V

    return-object v12

    .line 249
    :cond_3f
    instance-of v14, v9, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    if-eqz v14, :cond_46

    .line 246
    add-int/lit8 v12, v12, 0x1

    goto :goto_33

    .line 251
    :cond_46
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "Modifier not supported"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v12

    .line 256
    .end local v9    # "modifier":Ljava/nio/file/WatchEvent$Modifier;
    :cond_4f
    const/4 v2, 0x0

    .line 258
    .local v2, "attrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v12, 0x1

    :try_start_51
    invoke-static {v4, v12}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_54
    .catch Lsun/nio/fs/UnixException; {:try_start_51 .. :try_end_54} :catch_65

    move-result-object v2

    .line 262
    .local v2, "attrs":Lsun/nio/fs/UnixFileAttributes;
    invoke-virtual {v2}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_6b

    .line 263
    new-instance v12, Ljava/nio/file/NotDirectoryException;

    invoke-virtual {v4}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    return-object v12

    .line 259
    .local v2, "attrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_65
    move-exception v11

    .line 260
    .local v11, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v11, v4}, Lsun/nio/fs/UnixException;->asIOException(Lsun/nio/fs/UnixPath;)Ljava/io/IOException;

    move-result-object v12

    return-object v12

    .line 267
    .end local v11    # "x":Lsun/nio/fs/UnixException;
    .local v2, "attrs":Lsun/nio/fs/UnixFileAttributes;
    :cond_6b
    const/4 v10, -0x1

    .line 270
    .local v10, "wd":I
    :try_start_6c
    invoke-virtual {v4}, Lsun/nio/fs/UnixPath;->getByteArrayForSysCalls()[B

    move-result-object v12

    invoke-static {v12}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;
    :try_end_73
    .catch Lsun/nio/fs/UnixException; {:try_start_6c .. :try_end_73} :catch_b1

    move-result-object v3

    .line 272
    .local v3, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_74
    move-object/from16 v0, p0

    iget v12, v0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    invoke-virtual {v3}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v14

    invoke-static {v12, v14, v15, v8}, Lsun/nio/fs/LinuxWatchService;->-wrap2(IJI)I
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_ac

    move-result v10

    .line 274
    :try_start_80
    invoke-virtual {v3}, Lsun/nio/fs/NativeBuffer;->release()V
    :try_end_83
    .catch Lsun/nio/fs/UnixException; {:try_start_80 .. :try_end_83} :catch_b1

    .line 284
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    .line 285
    .local v7, "key":Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;
    if-nez v7, :cond_ab

    .line 286
    new-instance v7, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;

    .end local v7    # "key":Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/fs/LinuxWatchService$Poller;->watcher:Lsun/nio/fs/LinuxWatchService;

    move-object/from16 v0, p0

    iget v13, v0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    invoke-direct {v7, v4, v12, v13, v10}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;-><init>(Lsun/nio/fs/UnixPath;Lsun/nio/fs/LinuxWatchService;II)V

    .line 287
    .restart local v7    # "key":Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/fs/LinuxWatchService$Poller;->wdToKey:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_ab
    return-object v7

    .line 273
    .end local v7    # "key":Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;
    :catchall_ac
    move-exception v12

    .line 274
    :try_start_ad
    invoke-virtual {v3}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 273
    throw v12
    :try_end_b1
    .catch Lsun/nio/fs/UnixException; {:try_start_ad .. :try_end_b1} :catch_b1

    .line 276
    .end local v3    # "buffer":Lsun/nio/fs/NativeBuffer;
    :catch_b1
    move-exception v11

    .line 277
    .restart local v11    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v11}, Lsun/nio/fs/UnixException;->errno()I

    move-result v12

    sget v13, Lsun/nio/fs/UnixConstants;->ENOSPC:I

    if-ne v12, v13, :cond_c3

    .line 278
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "User limit of inotify watches reached"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v12

    .line 280
    :cond_c3
    invoke-virtual {v11, v4}, Lsun/nio/fs/UnixException;->asIOException(Lsun/nio/fs/UnixPath;)Ljava/io/IOException;

    move-result-object v12

    return-object v12
.end method

.method public run()V
    .registers 27

    .prologue
    .line 341
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    invoke-static/range {v20 .. v21}, Lsun/nio/fs/LinuxWatchService;->-wrap3(II)I
    :try_end_13
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_13} :catch_6a

    move-result v14

    .line 345
    .local v14, "nReady":I
    :try_start_14
    move-object/from16 v0, p0

    iget v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->ifd:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    move-wide/from16 v22, v0

    const/16 v21, 0x2000

    move/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->read(IJI)I
    :try_end_2b
    .catch Lsun/nio/fs/UnixException; {:try_start_14 .. :try_end_2b} :catch_5c

    move-result v6

    .line 353
    .local v6, "bytesRead":I
    :goto_2c
    const/16 v20, 0x1

    move/from16 v0, v20

    if-gt v14, v0, :cond_3a

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_7f

    if-nez v6, :cond_7f

    .line 355
    :cond_3a
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    move-wide/from16 v22, v0

    const/16 v21, 0x2000

    move/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->read(IJI)I

    .line 356
    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/LinuxWatchService$Poller;->processRequests()Z
    :try_end_58
    .catch Lsun/nio/fs/UnixException; {:try_start_3a .. :try_end_58} :catch_71

    move-result v17

    .line 357
    .local v17, "shutdown":Z
    if-eqz v17, :cond_7f

    .line 409
    .end local v6    # "bytesRead":I
    .end local v14    # "nReady":I
    .end local v17    # "shutdown":Z
    :goto_5b
    return-void

    .line 346
    .restart local v14    # "nReady":I
    :catch_5c
    move-exception v19

    .line 347
    .local v19, "x":Lsun/nio/fs/UnixException;
    :try_start_5d
    invoke-virtual/range {v19 .. v19}, Lsun/nio/fs/UnixException;->errno()I

    move-result v20

    sget v21, Lsun/nio/fs/UnixConstants;->EAGAIN:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6f

    .line 348
    throw v19
    :try_end_6a
    .catch Lsun/nio/fs/UnixException; {:try_start_5d .. :try_end_6a} :catch_6a

    .line 406
    .end local v14    # "nReady":I
    .end local v19    # "x":Lsun/nio/fs/UnixException;
    :catch_6a
    move-exception v19

    .line 407
    .restart local v19    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual/range {v19 .. v19}, Lsun/nio/fs/UnixException;->printStackTrace()V

    goto :goto_5b

    .line 349
    .restart local v14    # "nReady":I
    :cond_6f
    const/4 v6, 0x0

    .restart local v6    # "bytesRead":I
    goto :goto_2c

    .line 359
    .end local v19    # "x":Lsun/nio/fs/UnixException;
    :catch_71
    move-exception v19

    .line 360
    .restart local v19    # "x":Lsun/nio/fs/UnixException;
    :try_start_72
    invoke-virtual/range {v19 .. v19}, Lsun/nio/fs/UnixException;->errno()I

    move-result v20

    sget v21, Lsun/nio/fs/UnixConstants;->EAGAIN:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7f

    .line 361
    throw v19

    .line 366
    .end local v19    # "x":Lsun/nio/fs/UnixException;
    :cond_7f
    const/16 v16, 0x0

    .line 367
    .local v16, "offset":I
    :goto_81
    move/from16 v0, v16

    if-ge v0, v6, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget-wide v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    move-wide/from16 v20, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v8, v20, v22

    .line 369
    .local v8, "event":J
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-get1()Lsun/misc/Unsafe;

    move-result-object v20

    sget v21, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_WD:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v8

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v18

    .line 370
    .local v18, "wd":I
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-get1()Lsun/misc/Unsafe;

    move-result-object v20

    sget v21, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_MASK:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v8

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v13

    .line 371
    .local v13, "mask":I
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-get1()Lsun/misc/Unsafe;

    move-result-object v20

    sget v21, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_LEN:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v8

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v12

    .line 374
    .local v12, "len":I
    const/4 v15, 0x0

    .line 375
    .local v15, "name":Lsun/nio/fs/UnixPath;
    if-lez v12, :cond_12b

    .line 376
    move v4, v12

    .line 380
    .local v4, "actual":I
    :goto_d5
    if-lez v4, :cond_f5

    .line 381
    sget v20, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_NAME:I

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v20, v20, v8

    int-to-long v0, v4

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    const-wide/16 v22, 0x1

    sub-long v10, v20, v22

    .line 382
    .local v10, "last":J
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-get1()Lsun/misc/Unsafe;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v20

    if-eqz v20, :cond_11b

    .line 386
    .end local v10    # "last":J
    :cond_f5
    if-lez v4, :cond_12b

    .line 387
    new-array v5, v4, [B

    .line 393
    .local v5, "buf":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_fa
    if-ge v7, v4, :cond_11e

    .line 394
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->-get1()Lsun/misc/Unsafe;

    move-result-object v20

    sget v21, Lsun/nio/fs/LinuxWatchService$Poller;->OFFSETOF_NAME:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v8

    int-to-long v0, v7

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v20

    aput-byte v20, v5, v7

    .line 393
    add-int/lit8 v7, v7, 0x1

    goto :goto_fa

    .line 384
    .end local v5    # "buf":[B
    .end local v7    # "i":I
    .restart local v10    # "last":J
    :cond_11b
    add-int/lit8 v4, v4, -0x1

    goto :goto_d5

    .line 396
    .end local v10    # "last":J
    .restart local v5    # "buf":[B
    .restart local v7    # "i":I
    :cond_11e
    new-instance v15, Lsun/nio/fs/UnixPath;

    .end local v15    # "name":Lsun/nio/fs/UnixPath;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/fs/LinuxWatchService$Poller;->fs:Lsun/nio/fs/UnixFileSystem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v15, v0, v5}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    .line 401
    .end local v4    # "actual":I
    .end local v5    # "buf":[B
    .end local v7    # "i":I
    :cond_12b
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v13, v15}, Lsun/nio/fs/LinuxWatchService$Poller;->processEvent(IILsun/nio/fs/UnixPath;)V

    .line 403
    sget v20, Lsun/nio/fs/LinuxWatchService$Poller;->SIZEOF_INOTIFY_EVENT:I
    :try_end_134
    .catch Lsun/nio/fs/UnixException; {:try_start_72 .. :try_end_134} :catch_6a

    add-int v20, v20, v12

    add-int v16, v16, v20

    goto/16 :goto_81
.end method

.method wakeup()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lsun/nio/fs/LinuxWatchService$Poller;->socketpair:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-wide v2, p0, Lsun/nio/fs/LinuxWatchService$Poller;->address:J

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lsun/nio/fs/UnixNativeDispatcher;->write(IJI)I
    :try_end_b
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_b} :catch_c

    .line 219
    return-void

    .line 216
    :catch_c
    move-exception v0

    .line 217
    .local v0, "x":Lsun/nio/fs/UnixException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
