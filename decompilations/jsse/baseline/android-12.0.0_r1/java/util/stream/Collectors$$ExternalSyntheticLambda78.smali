.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda78;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/Collectors$$ExternalSyntheticLambda78;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda78;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda78;-><init>()V

    sput-object v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda78;->INSTANCE:Ljava/util/stream/Collectors$$ExternalSyntheticLambda78;

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

    new-instance v0, Ljava/util/DoubleSummaryStatistics;

    invoke-direct {v0}, Ljava/util/DoubleSummaryStatistics;-><init>()V

    return-object v0
.end method