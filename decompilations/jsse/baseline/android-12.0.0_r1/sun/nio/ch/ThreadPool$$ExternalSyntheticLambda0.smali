.class public final synthetic Lsun/nio/ch/ThreadPool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic blacklist INSTANCE:Lsun/nio/ch/ThreadPool$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Lsun/nio/ch/ThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lsun/nio/ch/ThreadPool$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lsun/nio/ch/ThreadPool$$ExternalSyntheticLambda0;->INSTANCE:Lsun/nio/ch/ThreadPool$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    invoke-static {p1}, Lsun/nio/ch/ThreadPool;->lambda$defaultThreadFactory$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
