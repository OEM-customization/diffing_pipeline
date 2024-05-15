.class public final enum Ljava/util/Locale$Category;
.super Ljava/lang/Enum;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/Locale$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/Locale$Category;

.field public static final enum DISPLAY:Ljava/util/Locale$Category;

.field public static final enum FORMAT:Ljava/util/Locale$Category;


# instance fields
.field final countryKey:Ljava/lang/String;

.field final languageKey:Ljava/lang/String;

.field final scriptKey:Ljava/lang/String;

.field final variantKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 2449
    new-instance v0, Ljava/util/Locale$Category;

    const-string/jumbo v1, "DISPLAY"

    .line 2453
    const-string/jumbo v3, "user.language.display"

    .line 2454
    const-string/jumbo v4, "user.script.display"

    .line 2455
    const-string/jumbo v5, "user.country.display"

    .line 2456
    const-string/jumbo v6, "user.variant.display"

    .line 2449
    invoke-direct/range {v0 .. v6}, Ljava/util/Locale$Category;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    sput-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    .line 2458
    new-instance v3, Ljava/util/Locale$Category;

    const-string/jumbo v4, "FORMAT"

    .line 2462
    const-string/jumbo v6, "user.language.format"

    .line 2463
    const-string/jumbo v7, "user.script.format"

    .line 2464
    const-string/jumbo v8, "user.country.format"

    .line 2465
    const-string/jumbo v9, "user.variant.format"

    move v5, v10

    .line 2458
    invoke-direct/range {v3 .. v9}, Ljava/util/Locale$Category;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    sput-object v3, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 2447
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Locale$Category;

    sget-object v1, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    aput-object v1, v0, v10

    sput-object v0, Ljava/util/Locale$Category;->$VALUES:[Ljava/util/Locale$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p3, "languageKey"    # Ljava/lang/String;
    .param p4, "scriptKey"    # Ljava/lang/String;
    .param p5, "countryKey"    # Ljava/lang/String;
    .param p6, "variantKey"    # Ljava/lang/String;

    .prologue
    .line 2467
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2468
    iput-object p3, p0, Ljava/util/Locale$Category;->languageKey:Ljava/lang/String;

    .line 2469
    iput-object p4, p0, Ljava/util/Locale$Category;->scriptKey:Ljava/lang/String;

    .line 2470
    iput-object p5, p0, Ljava/util/Locale$Category;->countryKey:Ljava/lang/String;

    .line 2471
    iput-object p6, p0, Ljava/util/Locale$Category;->variantKey:Ljava/lang/String;

    .line 2472
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/Locale$Category;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2447
    const-class v0, Ljava/util/Locale$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/Locale$Category;

    return-object v0
.end method

.method public static values()[Ljava/util/Locale$Category;
    .registers 1

    .prologue
    .line 2447
    sget-object v0, Ljava/util/Locale$Category;->$VALUES:[Ljava/util/Locale$Category;

    return-object v0
.end method
