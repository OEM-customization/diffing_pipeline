.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda55;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/Collectors$$ExternalSyntheticLambda55;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda55;-><init>()V

    sput-object v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda55;->INSTANCE:Ljava/util/stream/Collectors$$ExternalSyntheticLambda55;

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

    check-cast p1, Ljava/util/stream/Collectors$1OptionalBox;

    invoke-static {p1}, Ljava/util/stream/Collectors;->lambda$reducing$40(Ljava/util/stream/Collectors$1OptionalBox;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
