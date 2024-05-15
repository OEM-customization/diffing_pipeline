.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/Collectors$$ExternalSyntheticLambda60;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda60;-><init>()V

    sput-object v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda60;->INSTANCE:Ljava/util/stream/Collectors$$ExternalSyntheticLambda60;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [J

    invoke-static {p1}, Ljava/util/stream/Collectors;->lambda$averagingLong$29([J)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
