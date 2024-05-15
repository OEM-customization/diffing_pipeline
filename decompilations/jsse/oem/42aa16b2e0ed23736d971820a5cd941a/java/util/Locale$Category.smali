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
        "Ljava/lang/Enum<",
        "Ljava/util/Locale$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/util/Locale$Category;

.field public static final enum whitelist core-platform-api test-api DISPLAY:Ljava/util/Locale$Category;

.field public static final enum whitelist core-platform-api test-api FORMAT:Ljava/util/Locale$Category;


# instance fields
.field final greylist-max-o countryKey:Ljava/lang/String;

.field final greylist-max-o languageKey:Ljava/lang/String;

.field final greylist-max-o scriptKey:Ljava/lang/String;

.field final greylist-max-o variantKey:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 2786
    new-instance v7, Ljava/util/Locale$Category;

    const-string v1, "DISPLAY"

    const/4 v2, 0x0

    const-string v3, "user.language.display"

    const-string v4, "user.script.display"

    const-string v5, "user.country.display"

    const-string v6, "user.variant.display"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/Locale$Category;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    .line 2795
    new-instance v0, Ljava/util/Locale$Category;

    const-string v9, "FORMAT"

    const/4 v10, 0x1

    const-string v11, "user.language.format"

    const-string v12, "user.script.format"

    const-string v13, "user.country.format"

    const-string v14, "user.variant.format"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Ljava/util/Locale$Category;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 2780
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Locale$Category;

    sget-object v2, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Ljava/util/Locale$Category;->$VALUES:[Ljava/util/Locale$Category;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p3, "languageKey"    # Ljava/lang/String;
    .param p4, "scriptKey"    # Ljava/lang/String;
    .param p5, "countryKey"    # Ljava/lang/String;
    .param p6, "variantKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2800
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2801
    iput-object p3, p0, Ljava/util/Locale$Category;->languageKey:Ljava/lang/String;

    .line 2802
    iput-object p4, p0, Ljava/util/Locale$Category;->scriptKey:Ljava/lang/String;

    .line 2803
    iput-object p5, p0, Ljava/util/Locale$Category;->countryKey:Ljava/lang/String;

    .line 2804
    iput-object p6, p0, Ljava/util/Locale$Category;->variantKey:Ljava/lang/String;

    .line 2805
    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/util/Locale$Category;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2780
    const-class v0, Ljava/util/Locale$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/Locale$Category;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/util/Locale$Category;
    .registers 1

    .line 2780
    sget-object v0, Ljava/util/Locale$Category;->$VALUES:[Ljava/util/Locale$Category;

    invoke-virtual {v0}, [Ljava/util/Locale$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale$Category;

    return-object v0
.end method
