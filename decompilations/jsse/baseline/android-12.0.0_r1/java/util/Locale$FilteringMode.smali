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
        "Ljava/lang/Enum<",
        "Ljava/util/Locale$FilteringMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/util/Locale$FilteringMode;

.field public static final enum whitelist test-api AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

.field public static final enum whitelist test-api EXTENDED_FILTERING:Ljava/util/Locale$FilteringMode;

.field public static final enum whitelist test-api IGNORE_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

.field public static final enum whitelist test-api MAP_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

.field public static final enum whitelist test-api REJECT_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 3246
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string v1, "AUTOSELECT_FILTERING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    .line 3251
    new-instance v1, Ljava/util/Locale$FilteringMode;

    const-string v3, "EXTENDED_FILTERING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/util/Locale$FilteringMode;->EXTENDED_FILTERING:Ljava/util/Locale$FilteringMode;

    .line 3257
    new-instance v3, Ljava/util/Locale$FilteringMode;

    const-string v5, "IGNORE_EXTENDED_RANGES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/util/Locale$FilteringMode;->IGNORE_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    .line 3268
    new-instance v5, Ljava/util/Locale$FilteringMode;

    const-string v7, "MAP_EXTENDED_RANGES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljava/util/Locale$FilteringMode;->MAP_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    .line 3275
    new-instance v7, Ljava/util/Locale$FilteringMode;

    const-string v9, "REJECT_EXTENDED_RANGES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ljava/util/Locale$FilteringMode;->REJECT_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    .line 3239
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/util/Locale$FilteringMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Ljava/util/Locale$FilteringMode;->$VALUES:[Ljava/util/Locale$FilteringMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/util/Locale$FilteringMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3239
    const-class v0, Ljava/util/Locale$FilteringMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/Locale$FilteringMode;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/util/Locale$FilteringMode;
    .registers 1

    .line 3239
    sget-object v0, Ljava/util/Locale$FilteringMode;->$VALUES:[Ljava/util/Locale$FilteringMode;

    invoke-virtual {v0}, [Ljava/util/Locale$FilteringMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale$FilteringMode;

    return-object v0
.end method
