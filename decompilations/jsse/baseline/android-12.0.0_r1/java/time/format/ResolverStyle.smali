.class public final enum Ljava/time/format/ResolverStyle;
.super Ljava/lang/Enum;
.source "ResolverStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/format/ResolverStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/format/ResolverStyle;

.field public static final enum whitelist test-api LENIENT:Ljava/time/format/ResolverStyle;

.field public static final enum whitelist test-api SMART:Ljava/time/format/ResolverStyle;

.field public static final enum whitelist test-api STRICT:Ljava/time/format/ResolverStyle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 90
    new-instance v0, Ljava/time/format/ResolverStyle;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 103
    new-instance v1, Ljava/time/format/ResolverStyle;

    const-string v3, "SMART"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    .line 114
    new-instance v3, Ljava/time/format/ResolverStyle;

    const-string v5, "LENIENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    .line 77
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/time/format/ResolverStyle;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ljava/time/format/ResolverStyle;->$VALUES:[Ljava/time/format/ResolverStyle;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/time/format/ResolverStyle;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 77
    const-class v0, Ljava/time/format/ResolverStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/format/ResolverStyle;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/time/format/ResolverStyle;
    .registers 1

    .line 77
    sget-object v0, Ljava/time/format/ResolverStyle;->$VALUES:[Ljava/time/format/ResolverStyle;

    invoke-virtual {v0}, [Ljava/time/format/ResolverStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/ResolverStyle;

    return-object v0
.end method
