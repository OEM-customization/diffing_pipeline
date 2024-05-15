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

.field public static final enum whitelist core-platform-api test-api AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

.field public static final enum whitelist core-platform-api test-api EXTENDED_FILTERING:Ljava/util/Locale$FilteringMode;

.field public static final enum whitelist core-platform-api test-api IGNORE_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

.field public static final enum whitelist core-platform-api test-api MAP_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

.field public static final enum whitelist core-platform-api test-api REJECT_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 3264
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string v1, "AUTOSELECT_FILTERING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    .line 3269
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string v1, "EXTENDED_FILTERING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/Locale$FilteringMode;->EXTENDED_FILTERING:Ljava/util/Locale$FilteringMode;

    .line 3275
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string v1, "IGNORE_EXTENDED_RANGES"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/Locale$FilteringMode;->IGNORE_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    .line 3286
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string v1, "MAP_EXTENDED_RANGES"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/Locale$FilteringMode;->MAP_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    .line 3293
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string v1, "REJECT_EXTENDED_RANGES"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/Locale$FilteringMode;->REJECT_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    .line 3257
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/util/Locale$FilteringMode;

    sget-object v7, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    aput-object v7, v1, v2

    sget-object v2, Ljava/util/Locale$FilteringMode;->EXTENDED_FILTERING:Ljava/util/Locale$FilteringMode;

    aput-object v2, v1, v3

    sget-object v2, Ljava/util/Locale$FilteringMode;->IGNORE_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    aput-object v2, v1, v4

    sget-object v2, Ljava/util/Locale$FilteringMode;->MAP_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Ljava/util/Locale$FilteringMode;->$VALUES:[Ljava/util/Locale$FilteringMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/util/Locale$FilteringMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3257
    const-class v0, Ljava/util/Locale$FilteringMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/Locale$FilteringMode;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/util/Locale$FilteringMode;
    .registers 1

    .line 3257
    sget-object v0, Ljava/util/Locale$FilteringMode;->$VALUES:[Ljava/util/Locale$FilteringMode;

    invoke-virtual {v0}, [Ljava/util/Locale$FilteringMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale$FilteringMode;

    return-object v0
.end method
