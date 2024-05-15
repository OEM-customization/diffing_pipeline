.class final synthetic Lsun/nio/ch/-$Lambda$MfIm8har2wOVFJJtpwtPJYPKn8o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic $INST$0:Lsun/nio/ch/-$Lambda$MfIm8har2wOVFJJtpwtPJYPKn8o;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3
    .param p1, "arg0"    # Ljava/lang/Runnable;

    .prologue
    invoke-static {p1}, Lsun/nio/ch/ThreadPool;->lambda$-sun_nio_ch_ThreadPool_2676(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lsun/nio/ch/-$Lambda$MfIm8har2wOVFJJtpwtPJYPKn8o;

    invoke-direct {v0}, Lsun/nio/ch/-$Lambda$MfIm8har2wOVFJJtpwtPJYPKn8o;-><init>()V

    sput-object v0, Lsun/nio/ch/-$Lambda$MfIm8har2wOVFJJtpwtPJYPKn8o;->$INST$0:Lsun/nio/ch/-$Lambda$MfIm8har2wOVFJJtpwtPJYPKn8o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .prologue
    invoke-direct {p0, p1}, Lsun/nio/ch/-$Lambda$MfIm8har2wOVFJJtpwtPJYPKn8o;->$m$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
