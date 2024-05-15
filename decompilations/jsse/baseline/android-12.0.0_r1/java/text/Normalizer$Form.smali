.class public final enum Ljava/text/Normalizer$Form;
.super Ljava/lang/Enum;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Form"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/text/Normalizer$Form;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/text/Normalizer$Form;

.field public static final enum whitelist test-api NFC:Ljava/text/Normalizer$Form;

.field public static final enum whitelist test-api NFD:Ljava/text/Normalizer$Form;

.field public static final enum whitelist test-api NFKC:Ljava/text/Normalizer$Form;

.field public static final enum whitelist test-api NFKD:Ljava/text/Normalizer$Form;


# instance fields
.field private final blacklist icuNormalizer:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/icu/text/Normalizer2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 130
    new-instance v0, Ljava/text/Normalizer$Form;

    sget-object v1, Ljava/text/Normalizer$Form$$ExternalSyntheticLambda1;->INSTANCE:Ljava/text/Normalizer$Form$$ExternalSyntheticLambda1;

    const-string v2, "NFD"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    .line 135
    new-instance v1, Ljava/text/Normalizer$Form;

    sget-object v2, Ljava/text/Normalizer$Form$$ExternalSyntheticLambda0;->INSTANCE:Ljava/text/Normalizer$Form$$ExternalSyntheticLambda0;

    const-string v4, "NFC"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    .line 140
    new-instance v2, Ljava/text/Normalizer$Form;

    sget-object v4, Ljava/text/Normalizer$Form$$ExternalSyntheticLambda3;->INSTANCE:Ljava/text/Normalizer$Form$$ExternalSyntheticLambda3;

    const-string v6, "NFKD"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v2, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    .line 145
    new-instance v4, Ljava/text/Normalizer$Form;

    sget-object v6, Ljava/text/Normalizer$Form$$ExternalSyntheticLambda2;->INSTANCE:Ljava/text/Normalizer$Form$$ExternalSyntheticLambda2;

    const-string v8, "NFKC"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v4, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    .line 125
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/text/Normalizer$Form;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Ljava/text/Normalizer$Form;->$VALUES:[Ljava/text/Normalizer$Form;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/util/function/Supplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/icu/text/Normalizer2;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p3, "icuNormalizer":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/icu/text/Normalizer2;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 150
    iput-object p3, p0, Ljava/text/Normalizer$Form;->icuNormalizer:Ljava/util/function/Supplier;

    .line 151
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/text/Normalizer$Form;)Ljava/util/function/Supplier;
    .registers 2
    .param p0, "x0"    # Ljava/text/Normalizer$Form;

    .line 125
    iget-object v0, p0, Ljava/text/Normalizer$Form;->icuNormalizer:Ljava/util/function/Supplier;

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/text/Normalizer$Form;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 125
    const-class v0, Ljava/text/Normalizer$Form;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/text/Normalizer$Form;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/text/Normalizer$Form;
    .registers 1

    .line 125
    sget-object v0, Ljava/text/Normalizer$Form;->$VALUES:[Ljava/text/Normalizer$Form;

    invoke-virtual {v0}, [Ljava/text/Normalizer$Form;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/text/Normalizer$Form;

    return-object v0
.end method
