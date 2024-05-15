.class public final enum Lcom/sun/nio/file/ExtendedOpenOption;
.super Ljava/lang/Enum;
.source "ExtendedOpenOption.java"

# interfaces
.implements Ljava/nio/file/OpenOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sun/nio/file/ExtendedOpenOption;",
        ">;",
        "Ljava/nio/file/OpenOption;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/sun/nio/file/ExtendedOpenOption;

.field public static final enum blacklist NOSHARE_DELETE:Lcom/sun/nio/file/ExtendedOpenOption;

.field public static final enum blacklist NOSHARE_READ:Lcom/sun/nio/file/ExtendedOpenOption;

.field public static final enum blacklist NOSHARE_WRITE:Lcom/sun/nio/file/ExtendedOpenOption;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 41
    new-instance v0, Lcom/sun/nio/file/ExtendedOpenOption;

    const-string v1, "NOSHARE_READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/nio/file/ExtendedOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/nio/file/ExtendedOpenOption;->NOSHARE_READ:Lcom/sun/nio/file/ExtendedOpenOption;

    .line 45
    new-instance v1, Lcom/sun/nio/file/ExtendedOpenOption;

    const-string v3, "NOSHARE_WRITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sun/nio/file/ExtendedOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sun/nio/file/ExtendedOpenOption;->NOSHARE_WRITE:Lcom/sun/nio/file/ExtendedOpenOption;

    .line 49
    new-instance v3, Lcom/sun/nio/file/ExtendedOpenOption;

    const-string v5, "NOSHARE_DELETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sun/nio/file/ExtendedOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sun/nio/file/ExtendedOpenOption;->NOSHARE_DELETE:Lcom/sun/nio/file/ExtendedOpenOption;

    .line 37
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sun/nio/file/ExtendedOpenOption;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sun/nio/file/ExtendedOpenOption;->$VALUES:[Lcom/sun/nio/file/ExtendedOpenOption;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/sun/nio/file/ExtendedOpenOption;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lcom/sun/nio/file/ExtendedOpenOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/nio/file/ExtendedOpenOption;

    return-object v0
.end method

.method public static blacklist values()[Lcom/sun/nio/file/ExtendedOpenOption;
    .registers 1

    .line 37
    sget-object v0, Lcom/sun/nio/file/ExtendedOpenOption;->$VALUES:[Lcom/sun/nio/file/ExtendedOpenOption;

    invoke-virtual {v0}, [Lcom/sun/nio/file/ExtendedOpenOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/nio/file/ExtendedOpenOption;

    return-object v0
.end method
