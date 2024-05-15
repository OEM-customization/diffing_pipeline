.class public Lsun/misc/Cleaner;
.super Ljava/lang/ref/PhantomReference;
.source "Cleaner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final dummyQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static first:Lsun/misc/Cleaner;


# instance fields
.field private next:Lsun/misc/Cleaner;

.field private prev:Lsun/misc/Cleaner;

.field private final thunk:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lsun/misc/Cleaner;->dummyQueue:Ljava/lang/ref/ReferenceQueue;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    .line 59
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "referent"    # Ljava/lang/Object;
    .param p2, "thunk"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 115
    sget-object v0, Lsun/misc/Cleaner;->dummyQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 75
    iput-object v1, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    .line 76
    iput-object v1, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    .line 116
    iput-object p2, p0, Lsun/misc/Cleaner;->thunk:Ljava/lang/Runnable;

    .line 117
    return-void
.end method

.method private static declared-synchronized add(Lsun/misc/Cleaner;)Lsun/misc/Cleaner;
    .registers 3
    .param p0, "cl"    # Lsun/misc/Cleaner;

    .prologue
    const-class v1, Lsun/misc/Cleaner;

    monitor-enter v1

    .line 79
    :try_start_3
    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    if-eqz v0, :cond_f

    .line 80
    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    iput-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    .line 81
    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    iput-object p0, v0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    .line 83
    :cond_f
    sput-object p0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 84
    return-object p0

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;
    .registers 3
    .param p0, "ob"    # Ljava/lang/Object;
    .param p1, "thunk"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x0

    .line 131
    if-nez p1, :cond_4

    .line 132
    return-object v0

    .line 133
    :cond_4
    new-instance v0, Lsun/misc/Cleaner;

    invoke-direct {v0, p0, p1}, Lsun/misc/Cleaner;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lsun/misc/Cleaner;->add(Lsun/misc/Cleaner;)Lsun/misc/Cleaner;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized remove(Lsun/misc/Cleaner;)Z
    .registers 4
    .param p0, "cl"    # Lsun/misc/Cleaner;

    .prologue
    const-class v1, Lsun/misc/Cleaner;

    monitor-enter v1

    .line 90
    :try_start_3
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_36

    if-ne v0, p0, :cond_a

    .line 91
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 94
    :cond_a
    :try_start_a
    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    if-ne v0, p0, :cond_16

    .line 95
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    if-eqz v0, :cond_31

    .line 96
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    sput-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    .line 100
    :cond_16
    :goto_16
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    if-eqz v0, :cond_20

    .line 101
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    iget-object v2, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    iput-object v2, v0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    .line 102
    :cond_20
    iget-object v0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    if-eqz v0, :cond_2a

    .line 103
    iget-object v0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    iget-object v2, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    iput-object v2, v0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    .line 106
    :cond_2a
    iput-object p0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    .line 107
    iput-object p0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_36

    .line 108
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 98
    :cond_31
    :try_start_31
    iget-object v0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    sput-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_36

    goto :goto_16

    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clean()V
    .registers 3

    .prologue
    .line 140
    invoke-static {p0}, Lsun/misc/Cleaner;->remove(Lsun/misc/Cleaner;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 141
    return-void

    .line 143
    :cond_7
    :try_start_7
    iget-object v1, p0, Lsun/misc/Cleaner;->thunk:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    .line 154
    :goto_c
    return-void

    .line 144
    :catch_d
    move-exception v0

    .line 145
    .local v0, "x":Ljava/lang/Throwable;
    new-instance v1, Lsun/misc/Cleaner$1;

    invoke-direct {v1, p0, v0}, Lsun/misc/Cleaner$1;-><init>(Lsun/misc/Cleaner;Ljava/lang/Throwable;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    goto :goto_c
.end method
