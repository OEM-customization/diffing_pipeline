.class Ljava/lang/Character$CharacterCache;
.super Ljava/lang/Object;
.source "Character.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Character;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharacterCache"
.end annotation


# static fields
.field static final cache:[Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 4568
    const/16 v1, 0x80

    new-array v1, v1, [Ljava/lang/Character;

    sput-object v1, Ljava/lang/Character$CharacterCache;->cache:[Ljava/lang/Character;

    .line 4571
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    sget-object v1, Ljava/lang/Character$CharacterCache;->cache:[Ljava/lang/Character;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 4572
    sget-object v1, Ljava/lang/Character$CharacterCache;->cache:[Ljava/lang/Character;

    new-instance v2, Ljava/lang/Character;

    int-to-char v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v1, v0

    .line 4571
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4565
    :cond_19
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
