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

.field public static final enum whitelist core-platform-api test-api NFC:Ljava/text/Normalizer$Form;

.field public static final enum whitelist core-platform-api test-api NFD:Ljava/text/Normalizer$Form;

.field public static final enum whitelist core-platform-api test-api NFKC:Ljava/text/Normalizer$Form;

.field public static final enum whitelist core-platform-api test-api NFKD:Ljava/text/Normalizer$Form;


# instance fields
.field private final greylist-max-o icuMode:Landroid/icu/text/Normalizer$Mode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 126
    new-instance v0, Ljava/text/Normalizer$Form;

    sget-object v1, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    const-string v2, "NFD"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILandroid/icu/text/Normalizer$Mode;)V

    sput-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    .line 131
    new-instance v0, Ljava/text/Normalizer$Form;

    sget-object v1, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    const-string v2, "NFC"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILandroid/icu/text/Normalizer$Mode;)V

    sput-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    .line 136
    new-instance v0, Ljava/text/Normalizer$Form;

    sget-object v1, Landroid/icu/text/Normalizer;->NFKD:Landroid/icu/text/Normalizer$Mode;

    const-string v2, "NFKD"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILandroid/icu/text/Normalizer$Mode;)V

    sput-object v0, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    .line 141
    new-instance v0, Ljava/text/Normalizer$Form;

    sget-object v1, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    const-string v2, "NFKC"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILandroid/icu/text/Normalizer$Mode;)V

    sput-object v0, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    .line 121
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/text/Normalizer$Form;

    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    aput-object v2, v1, v3

    sget-object v2, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    aput-object v2, v1, v4

    sget-object v2, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Ljava/text/Normalizer$Form;->$VALUES:[Ljava/text/Normalizer$Form;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILandroid/icu/text/Normalizer$Mode;)V
    .registers 4
    .param p3, "icuMode"    # Landroid/icu/text/Normalizer$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/Normalizer$Mode;",
            ")V"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput-object p3, p0, Ljava/text/Normalizer$Form;->icuMode:Landroid/icu/text/Normalizer$Mode;

    .line 147
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/text/Normalizer$Form;)Landroid/icu/text/Normalizer$Mode;
    .registers 2
    .param p0, "x0"    # Ljava/text/Normalizer$Form;

    .line 121
    iget-object v0, p0, Ljava/text/Normalizer$Form;->icuMode:Landroid/icu/text/Normalizer$Mode;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/text/Normalizer$Form;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 121
    const-class v0, Ljava/text/Normalizer$Form;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/text/Normalizer$Form;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/text/Normalizer$Form;
    .registers 1

    .line 121
    sget-object v0, Ljava/text/Normalizer$Form;->$VALUES:[Ljava/text/Normalizer$Form;

    invoke-virtual {v0}, [Ljava/text/Normalizer$Form;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/text/Normalizer$Form;

    return-object v0
.end method
