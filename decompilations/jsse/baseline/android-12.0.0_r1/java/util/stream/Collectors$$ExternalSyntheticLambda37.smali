.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/Collectors$$ExternalSyntheticLambda37;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda37;-><init>()V

    sput-object v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda37;->INSTANCE:Ljava/util/stream/Collectors$$ExternalSyntheticLambda37;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/util/StringJoiner;

    check-cast p2, Ljava/util/StringJoiner;

    invoke-virtual {p1, p2}, Ljava/util/StringJoiner;->merge(Ljava/util/StringJoiner;)Ljava/util/StringJoiner;

    move-result-object p1

    return-object p1
.end method
