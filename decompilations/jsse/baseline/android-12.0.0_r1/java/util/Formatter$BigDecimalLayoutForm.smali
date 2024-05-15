.class public final enum Ljava/util/Formatter$BigDecimalLayoutForm;
.super Ljava/lang/Enum;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BigDecimalLayoutForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/util/Formatter$BigDecimalLayoutForm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/util/Formatter$BigDecimalLayoutForm;

.field public static final enum whitelist test-api DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

.field public static final enum whitelist test-api SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 2694
    new-instance v0, Ljava/util/Formatter$BigDecimalLayoutForm;

    const-string v1, "SCIENTIFIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$BigDecimalLayoutForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    .line 2699
    new-instance v1, Ljava/util/Formatter$BigDecimalLayoutForm;

    const-string v3, "DECIMAL_FLOAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/util/Formatter$BigDecimalLayoutForm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/util/Formatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

    .line 2690
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/util/Formatter$BigDecimalLayoutForm;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ljava/util/Formatter$BigDecimalLayoutForm;->$VALUES:[Ljava/util/Formatter$BigDecimalLayoutForm;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2690
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/util/Formatter$BigDecimalLayoutForm;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2690
    const-class v0, Ljava/util/Formatter$BigDecimalLayoutForm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/Formatter$BigDecimalLayoutForm;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/util/Formatter$BigDecimalLayoutForm;
    .registers 1

    .line 2690
    sget-object v0, Ljava/util/Formatter$BigDecimalLayoutForm;->$VALUES:[Ljava/util/Formatter$BigDecimalLayoutForm;

    invoke-virtual {v0}, [Ljava/util/Formatter$BigDecimalLayoutForm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Formatter$BigDecimalLayoutForm;

    return-object v0
.end method
