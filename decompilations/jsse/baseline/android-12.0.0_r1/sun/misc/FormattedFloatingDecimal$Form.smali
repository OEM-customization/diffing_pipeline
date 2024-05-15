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
    .registers 9

    .line 32
    new-instance v0, Lsun/misc/FormattedFloatingDecimal$Form;

    const-string v1, "SCIENTIFIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    new-instance v1, Lsun/misc/FormattedFloatingDecimal$Form;

    const-string v3, "COMPATIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    new-instance v3, Lsun/misc/FormattedFloatingDecimal$Form;

    const-string v5, "DECIMAL_FLOAT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    new-instance v5, Lsun/misc/FormattedFloatingDecimal$Form;

    const-string v7, "GENERAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lsun/misc/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    const/4 v7, 0x4

    new-array v7, v7, [Lsun/misc/FormattedFloatingDecimal$Form;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lsun/misc/FormattedFloatingDecimal$Form;->$VALUES:[Lsun/misc/FormattedFloatingDecimal$Form;

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
