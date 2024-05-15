.class public final synthetic Lsun/nio/ch/-$$Lambda$ThreadPool$N88rfRTSpCtnK5fgJO-WA6OwVQM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic blacklist INSTANCE:Lsun/nio/ch/-$$Lambda$ThreadPool$N88rfRTSpCtnK5fgJO-WA6OwVQM;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Lsun/nio/ch/-$$Lambda$ThreadPool$N88rfRTSpCtnK5fgJO-WA6OwVQM;

    invoke-direct {v0}, Lsun/nio/ch/-$$Lambda$ThreadPool$N88rfRTSpCtnK5fgJO-WA6OwVQM;-><init>()V

    sput-object v0, Lsun/nio/ch/-$$Lambda$ThreadPool$N88rfRTSpCtnK5fgJO-WA6OwVQM;->INSTANCE:Lsun/nio/ch/-$$Lambda$ThreadPool$N88rfRTSpCtnK5fgJO-WA6OwVQM;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    invoke-static {p1}, Lsun/nio/ch/ThreadPool;->lambda$defaultThreadFactory$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
