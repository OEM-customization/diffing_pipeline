.class public final enum Ljava/util/Locale$FilteringMode;
.super Ljava/lang/Enum;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilteringMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/Locale$FilteringMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/Locale$FilteringMode;

.field public static final enum AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

.field public static final enum EXTENDED_FILTERING:Ljava/util/Locale$FilteringMode;

.field public static final enum IGNORE_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

.field public static final enum MAP_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

.field public static final enum REJECT_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2924
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string/jumbo v1, "AUTOSELECT_FILTERING"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    .line 2930
    sput-object v0, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    .line 2932
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string/jumbo v1, "EXTENDED_FILTERING"

    invoke-direct {v0, v1, v3}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    .line 2935
    sput-object v0, Ljava/util/Locale$FilteringMode;->EXTENDED_FILTERING:Ljava/util/Locale$FilteringMode;

    .line 2937
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string/jumbo v1, "IGNORE_EXTENDED_RANGES"

    invoke-direct {v0, v1, v4}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    .line 2941
    sput-object v0, Ljava/util/Locale$FilteringMode;->IGNORE_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    .line 2943
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string/jumbo v1, "MAP_EXTENDED_RANGES"

    invoke-direct {v0, v1, v5}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    .line 2952
    sput-object v0, Ljava/util/Locale$FilteringMode;->MAP_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    .line 2954
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string/jumbo v1, "REJECT_EXTENDED_RANGES"

    invoke-direct {v0, v1, v6}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    .line 2959
    sput-object v0, Ljava/util/Locale$FilteringMode;->REJECT_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    .line 2923
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Locale$FilteringMode;

    sget-object v1, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale$FilteringMode;->EXTENDED_FILTERING:Ljava/util/Locale$FilteringMode;

    aput-object v1, v0, v3

    sget-object v1, Ljava/util/Locale$FilteringMode;->IGNORE_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    aput-object v1, v0, v4

    sget-object v1, Ljava/util/Locale$FilteringMode;->MAP_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    aput-object v1, v0, v5

    sget-object v1, Ljava/util/Locale$FilteringMode;->REJECT_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    aput-object v1, v0, v6

    sput-object v0, Ljava/util/Locale$FilteringMode;->$VALUES:[Ljava/util/Locale$FilteringMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 2923
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/Locale$FilteringMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2923
    const-class v0, Ljava/util/Locale$FilteringMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/Locale$FilteringMode;

    return-object v0
.end method

.method public static values()[Ljava/util/Locale$FilteringMode;
    .registers 1

    .prologue
    .line 2923
    sget-object v0, Ljava/util/Locale$FilteringMode;->$VALUES:[Ljava/util/Locale$FilteringMode;

    return-object v0
.end method
