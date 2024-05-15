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
.field private static final unset:Ljava/lang/Object;


# instance fields
.field private entry:Ljava/lang/Object;

.field private final owner:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 387
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;

    .line 385
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->owner:Ljava/lang/Thread;

    .line 389
    sget-object v0, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    .line 385
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/ObjectStreamClass$EntryFuture;)V
    .registers 2
    .param p1, "-this0"    # Ljava/io/ObjectStreamClass$EntryFuture;

    .prologue
    invoke-direct {p0}, Ljava/io/ObjectStreamClass$EntryFuture;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized get()Ljava/lang/Object;
    .registers 5

    .prologue
    monitor-enter p0

    .line 412
    const/4 v1, 0x0

    .line 413
    .local v1, "interrupted":Z
    :goto_2
    :try_start_2
    iget-object v2, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    sget-object v3, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_1d

    if-ne v2, v3, :cond_f

    .line 415
    :try_start_8
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$EntryFuture;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_c
    .catchall {:try_start_8 .. :try_end_b} :catchall_1d

    goto :goto_2

    .line 416
    :catch_c
    move-exception v0

    .line 417
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    goto :goto_2

    .line 420
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_f
    if-eqz v1, :cond_19

    .line 422
    :try_start_11
    new-instance v2, Ljava/io/ObjectStreamClass$EntryFuture$1;

    invoke-direct {v2, p0}, Ljava/io/ObjectStreamClass$EntryFuture$1;-><init>(Ljava/io/ObjectStreamClass$EntryFuture;)V

    .line 421
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 430
    :cond_19
    iget-object v2, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v2

    :catchall_1d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getOwner()Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->owner:Ljava/lang/Thread;

    return-object v0
.end method

.method declared-synchronized set(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "entry"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 399
    :try_start_1
    iget-object v0, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    sget-object v1, Ljava/io/ObjectStreamClass$EntryFuture;->unset:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_12

    if-eq v0, v1, :cond_a

    .line 400
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 402
    :cond_a
    :try_start_a
    iput-object p1, p0, Ljava/io/ObjectStreamClass$EntryFuture;->entry:Ljava/lang/Object;

    .line 403
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$EntryFuture;->notifyAll()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_12

    .line 404
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
