.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda79;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/Collectors$$ExternalSyntheticLambda79;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda79;-><init>()V

    sput-object v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda79;->INSTANCE:Ljava/util/stream/Collectors$$ExternalSyntheticLambda79;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method