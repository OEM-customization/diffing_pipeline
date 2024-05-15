.class final enum Ljavax/crypto/Cipher$NeedToSet;
.super Ljava/lang/Enum;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NeedToSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/crypto/Cipher$NeedToSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljavax/crypto/Cipher$NeedToSet;

.field public static final enum greylist-max-o BOTH:Ljavax/crypto/Cipher$NeedToSet;

.field public static final enum greylist-max-o MODE:Ljavax/crypto/Cipher$NeedToSet;

.field public static final enum greylist-max-o NONE:Ljavax/crypto/Cipher$NeedToSet;

.field public static final enum greylist-max-o PADDING:Ljavax/crypto/Cipher$NeedToSet;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 2699
    new-instance v0, Ljavax/crypto/Cipher$NeedToSet;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/crypto/Cipher$NeedToSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/crypto/Cipher$NeedToSet;->NONE:Ljavax/crypto/Cipher$NeedToSet;

    new-instance v0, Ljavax/crypto/Cipher$NeedToSet;

    const-string v1, "MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljavax/crypto/Cipher$NeedToSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    new-instance v0, Ljavax/crypto/Cipher$NeedToSet;

    const-string v1, "PADDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljavax/crypto/Cipher$NeedToSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    new-instance v0, Ljavax/crypto/Cipher$NeedToSet;

    const-string v1, "BOTH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljavax/crypto/Cipher$NeedToSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    .line 2698
    const/4 v1, 0x4

    new-array v1, v1, [Ljavax/crypto/Cipher$NeedToSet;

    sget-object v6, Ljavax/crypto/Cipher$NeedToSet;->NONE:Ljavax/crypto/Cipher$NeedToSet;

    aput-object v6, v1, v2

    sget-object v2, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    aput-object v2, v1, v3

    sget-object v2, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Ljavax/crypto/Cipher$NeedToSet;->$VALUES:[Ljavax/crypto/Cipher$NeedToSet;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2698
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Ljavax/crypto/Cipher$NeedToSet;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2698
    const-class v0, Ljavax/crypto/Cipher$NeedToSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher$NeedToSet;

    return-object v0
.end method

.method public static greylist-max-o values()[Ljavax/crypto/Cipher$NeedToSet;
    .registers 1

    .line 2698
    sget-object v0, Ljavax/crypto/Cipher$NeedToSet;->$VALUES:[Ljavax/crypto/Cipher$NeedToSet;

    invoke-virtual {v0}, [Ljavax/crypto/Cipher$NeedToSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/crypto/Cipher$NeedToSet;

    return-object v0
.end method
