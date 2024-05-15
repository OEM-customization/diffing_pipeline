.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/Collectors$$ExternalSyntheticLambda54;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda54;-><init>()V

    sput-object v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda54;->INSTANCE:Ljava/util/stream/Collectors$$ExternalSyntheticLambda54;

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

    check-cast p1, Ljava/util/StringJoiner;

    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
