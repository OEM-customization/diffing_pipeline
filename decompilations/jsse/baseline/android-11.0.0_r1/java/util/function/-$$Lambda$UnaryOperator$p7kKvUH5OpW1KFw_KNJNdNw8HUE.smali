.class public final synthetic Ljava/util/function/-$$Lambda$UnaryOperator$p7kKvUH5OpW1KFw_KNJNdNw8HUE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/function/-$$Lambda$UnaryOperator$p7kKvUH5OpW1KFw_KNJNdNw8HUE;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/function/-$$Lambda$UnaryOperator$p7kKvUH5OpW1KFw_KNJNdNw8HUE;

    invoke-direct {v0}, Ljava/util/function/-$$Lambda$UnaryOperator$p7kKvUH5OpW1KFw_KNJNdNw8HUE;-><init>()V

    sput-object v0, Ljava/util/function/-$$Lambda$UnaryOperator$p7kKvUH5OpW1KFw_KNJNdNw8HUE;->INSTANCE:Ljava/util/function/-$$Lambda$UnaryOperator$p7kKvUH5OpW1KFw_KNJNdNw8HUE;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Ljava/util/function/UnaryOperator;->lambda$identity$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
