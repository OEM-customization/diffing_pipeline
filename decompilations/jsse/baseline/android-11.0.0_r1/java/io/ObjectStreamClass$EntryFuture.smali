.class Ljava/io/ObjectStreamClass$EntryFuture;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryFuture"
.end annotation


# static fields
.field private static final greylist-max-o unset:Ljava/lang/Object;


# instance fields
.field private greylist-max-o entry:Ljava/lang/Object;

.field private final greylist-max-o owner:Ljava/lang/Thread;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 410
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->owner:Ljava/lang/Thread;

    .line 412
    sget-object v0, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/io/ObjectStreamClass$1;)V
    .registers 2
    .param p1, "x0"    # Ljava/io/ObjectStreamClass$1;

    .line 408
    invoke-direct {p0}, Ljava/io/ObjectStreamClass$EntryFuture;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized greylist-max-o get()Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "interrupted":Z
    :goto_2
    :try_start_2
    iget-object v1, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    sget-object v2, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_1d

    if-ne v1, v2, :cond_f

    .line 438
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_c
    .catchall {:try_start_8 .. :try_end_b} :catchall_1d

    .line 441
    goto :goto_2

    .line 439
    .end local p0    # "this":Ljava/io/ObjectStreamClass$EntryFuture;
    :catch_c
    move-exception v1

    .line 440
    .local v1, "ex":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 441
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 443
    :cond_f
    if-eqz v0, :cond_19

    .line 444
    :try_start_11
    new-instance v1, Ljava/io/ObjectStreamClass$EntryFuture$1;

    invoke-direct {v1, p0}, Ljava/io/ObjectStreamClass$EntryFuture$1;-><init>(Ljava/io/ObjectStreamClass$EntryFuture;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 453
    :cond_19
    iget-object v1, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v1

    .line 434
    .end local v0    # "interrupted":Z
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method greylist-max-o getOwner()Ljava/lang/Thread;
    .registers 2

    .line 460
    iget-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->owner:Ljava/lang/Thread;

    return-object v0
.end method

.method declared-synchronized greylist-max-o set(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "entry"    # Ljava/lang/Object;

    monitor-enter p0

    .line 422
    :try_start_1
    iget-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    sget-object v1, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_12

    if-eq v0, v1, :cond_a

    .line 423
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 425
    :cond_a
    :try_start_a
    iput-object p1, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    .line 426
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_12

    .line 427
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 421
    .end local p0    # "this":Ljava/io/ObjectStreamClass$EntryFuture;
    .end local p1    # "entry":Ljava/lang/Object;
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method
