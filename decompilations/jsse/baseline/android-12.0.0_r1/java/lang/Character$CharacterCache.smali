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
.field static final greylist-max-o cache:[Ljava/lang/Character;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 4579
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/Character;

    sput-object v0, Ljava/lang/Character$CharacterCache;->cache:[Ljava/lang/Character;

    .line 4582
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    sget-object v1, Ljava/lang/Character$CharacterCache;->cache:[Ljava/lang/Character;

    array-length v2, v1

    if-ge v0, v2, :cond_17

    .line 4583
    new-instance v2, Ljava/lang/Character;

    int-to-char v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v1, v0

    .line 4582
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4584
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 4577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
