.class public final synthetic Ljava/util/stream/-$$Lambda$0HimmAYr5h1pFdNckEhxJ9y9Zqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/DoubleFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$0HimmAYr5h1pFdNckEhxJ9y9Zqk;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$0HimmAYr5h1pFdNckEhxJ9y9Zqk;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$0HimmAYr5h1pFdNckEhxJ9y9Zqk;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$0HimmAYr5h1pFdNckEhxJ9y9Zqk;->INSTANCE:Ljava/util/stream/-$$Lambda$0HimmAYr5h1pFdNckEhxJ9y9Zqk;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(D)Ljava/lang/Object;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
