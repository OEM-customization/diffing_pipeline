.class public final enum Lsun/misc/FormattedFloatingDecimal$Form;
.super Ljava/lang/Enum;
.source "FormattedFloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/FormattedFloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Form"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/misc/FormattedFloatingDecimal$Form;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/misc/FormattedFloatingDecimal$Form;

.field public static final enum greylist COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

.field public static final enum greylist DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

.field public static final enum blacklist GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

.field public static final enum greylist SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 32
    new-instance v0, Lsun/misc/FormattedFloatingDecimal$Form;

    const-string v1, "SCIENTIFIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    new-instance v0, Lsun/misc/FormattedFloatingDecimal$Form;

    const-string v1, "COMPATIBLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    new-instance v0, Lsun/misc/FormattedFloatingDecimal$Form;

    const-string v1, "DECIMAL_FLOAT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    new-instance v0, Lsun/misc/FormattedFloatingDecimal$Form;

    const-string v1, "GENERAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    const/4 v1, 0x4

    new-array v1, v1, [Lsun/misc/FormattedFloatingDecimal$Form;

    sget-object v6, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    aput-object v6, v1, v2

    sget-object v2, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    aput-object v2, v1, v3

    sget-object v2, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->$VALUES:[Lsun/misc/FormattedFloatingDecimal$Form;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/misc/FormattedFloatingDecimal$Form;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/misc/FormattedFloatingDecimal$Form;

    return-object v0
.end method

.method public static blacklist values()[Lsun/misc/FormattedFloatingDecimal$Form;
    .registers 1

    .line 32
    sget-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->$VALUES:[Lsun/misc/FormattedFloatingDecimal$Form;

    invoke-virtual {v0}, [Lsun/misc/FormattedFloatingDecimal$Form;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/misc/FormattedFloatingDecimal$Form;

    return-object v0
.end method
