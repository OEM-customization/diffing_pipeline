.class public final synthetic Ljava/util/stream/FindOps$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/FindOps$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/FindOps$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/util/stream/FindOps$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Ljava/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE:Ljava/util/stream/FindOps$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/OptionalDouble;

    invoke-virtual {p1}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result p1

    return p1
.end method
