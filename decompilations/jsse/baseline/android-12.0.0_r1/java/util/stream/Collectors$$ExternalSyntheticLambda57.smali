.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/Collectors$$ExternalSyntheticLambda57;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda57;-><init>()V

    sput-object v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda57;->INSTANCE:Ljava/util/stream/Collectors$$ExternalSyntheticLambda57;

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

    check-cast p1, [D

    invoke-static {p1}, Ljava/util/stream/Collectors;->lambda$summingDouble$21([D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
