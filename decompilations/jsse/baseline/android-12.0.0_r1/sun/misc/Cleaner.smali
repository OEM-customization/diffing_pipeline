.class public Lsun/misc/Cleaner;
.super Ljava/lang/ref/PhantomReference;
.source "Cleaner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist-max-o dummyQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o first:Lsun/misc/Cleaner;


# instance fields
.field private greylist-max-o next:Lsun/misc/Cleaner;

.field private greylist-max-o prev:Lsun/misc/Cleaner;

.field private final greylist-max-o thunk:Ljava/lang/Runnable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lsun/misc/Cleaner;->dummyQueue:Ljava/lang/ref/ReferenceQueue;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "referent"    # Ljava/lang/Object;
    .param p2, "thunk"    # Ljava/lang/Runnable;

    .line 114
    sget-object v0, Lsun/misc/Cleaner;->dummyQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    iput-object v0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    .line 115
    iput-object p2, p0, Lsun/misc/Cleaner;->thunk:Ljava/lang/Runnable;

    .line 116
    return-void
.end method

.method private static declared-synchronized greylist-max-o add(Lsun/misc/Cleaner;)Lsun/misc/Cleaner;
    .registers 3
    .param p0, "cl"    # Lsun/misc/Cleaner;

    const-class v0, Lsun/misc/Cleaner;

    monitor-enter v0

    .line 78
    :try_start_3
    sget-object v1, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    if-eqz v1, :cond_b

    .line 79
    iput-object v1, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    .line 80
    iput-object p0, v1, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    .line 82
    :cond_b
    sput-object p0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 83
    monitor-exit v0

    return-object p0

    .line 77
    .end local p0    # "cl":Lsun/misc/Cleaner;
    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static greylist test-api create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;
    .registers 3
    .param p0, "ob"    # Ljava/lang/Object;
    .param p1, "thunk"    # Ljava/lang/Runnable;

    .line 130
    if-nez p1, :cond_4

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_4
    new-instance v0, Lsun/misc/Cleaner;

    invoke-direct {v0, p0, p1}, Lsun/misc/Cleaner;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lsun/misc/Cleaner;->add(Lsun/misc/Cleaner;)Lsun/misc/Cleaner;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized greylist-max-o remove(Lsun/misc/Cleaner;)Z
    .registers 4
    .param p0, "cl"    # Lsun/misc/Cleaner;

    const-class v0, Lsun/misc/Cleaner;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object v1, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2a

    if-ne v1, p0, :cond_a

    .line 90
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 93
    :cond_a
    :try_start_a
    sget-object v2, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    if-ne v2, p0, :cond_17

    .line 94
    if-eqz v1, :cond_13

    .line 95
    sput-object v1, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    goto :goto_17

    .line 97
    :cond_13
    iget-object v2, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    sput-object v2, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    .line 99
    :cond_17
    :goto_17
    if-eqz v1, :cond_1d

    .line 100
    iget-object v2, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    iput-object v2, v1, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    .line 101
    :cond_1d
    iget-object v2, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    if-eqz v2, :cond_23

    .line 102
    iput-object v1, v2, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    .line 105
    :cond_23
    iput-object p0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    .line 106
    iput-object p0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_2a

    .line 107
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 88
    .end local p0    # "cl":Lsun/misc/Cleaner;
    :catchall_2a
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public greylist test-api clean()V
    .registers 3

    .line 139
    invoke-static {p0}, Lsun/misc/Cleaner;->remove(Lsun/misc/Cleaner;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 140
    return-void

    .line 142
    :cond_7
    :try_start_7
    iget-object v0, p0, Lsun/misc/Cleaner;->thunk:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    .line 152
    goto :goto_16

    .line 143
    :catchall_d
    move-exception v0

    .line 144
    .local v0, "x":Ljava/lang/Throwable;
    new-instance v1, Lsun/misc/Cleaner$1;

    invoke-direct {v1, p0, v0}, Lsun/misc/Cleaner$1;-><init>(Lsun/misc/Cleaner;Ljava/lang/Throwable;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 153
    .end local v0    # "x":Ljava/lang/Throwable;
    :goto_16
    return-void
.end method
