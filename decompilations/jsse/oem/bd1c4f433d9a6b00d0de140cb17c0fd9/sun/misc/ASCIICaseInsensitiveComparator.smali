.class public Lsun/misc/ASCIICaseInsensitiveComparator;
.super Ljava/lang/Object;
.source "ASCIICaseInsensitiveComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/misc/ASCIICaseInsensitiveComparator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/misc/ASCIICaseInsensitiveComparator;->-assertionsDisabled:Z

    .line 38
    new-instance v0, Lsun/misc/ASCIICaseInsensitiveComparator;

    invoke-direct {v0}, Lsun/misc/ASCIICaseInsensitiveComparator;-><init>()V

    .line 37
    sput-object v0, Lsun/misc/ASCIICaseInsensitiveComparator;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isLower(I)Z
    .registers 4
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x0

    .line 85
    add-int/lit8 v1, p0, -0x61

    rsub-int/lit8 v2, p0, 0x7a

    or-int/2addr v1, v2

    if-ltz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method static isUpper(I)Z
    .registers 4
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x0

    .line 89
    add-int/lit8 v1, p0, -0x41

    rsub-int/lit8 v2, p0, 0x5a

    or-int/2addr v1, v2

    if-ltz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public static lowerCaseHashCode(Ljava/lang/String;)I
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 76
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v2, :cond_17

    .line 77
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lsun/misc/ASCIICaseInsensitiveComparator;->toLower(I)I

    move-result v4

    add-int v0, v3, v4

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 80
    :cond_17
    return v0
.end method

.method static toLower(I)I
    .registers 2
    .param p0, "ch"    # I

    .prologue
    .line 93
    invoke-static {p0}, Lsun/misc/ASCIICaseInsensitiveComparator;->isUpper(I)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 p0, p0, 0x20

    .end local p0    # "ch":I
    :cond_8
    return p0
.end method

.method static toUpper(I)I
    .registers 2
    .param p0, "ch"    # I

    .prologue
    .line 97
    invoke-static {p0}, Lsun/misc/ASCIICaseInsensitiveComparator;->isLower(I)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 p0, p0, -0x20

    .end local p0    # "ch":I
    :cond_8
    return p0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 40
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lsun/misc/ASCIICaseInsensitiveComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x7f

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "n1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 42
    .local v5, "n2":I
    if-ge v4, v5, :cond_26

    move v3, v4

    .line 43
    .local v3, "minLen":I
    :goto_d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v3, :cond_3c

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 45
    .local v0, "c1":C
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 46
    .local v1, "c2":C
    sget-boolean v6, Lsun/misc/ASCIICaseInsensitiveComparator;->-assertionsDisabled:Z

    if-nez v6, :cond_28

    if-gt v0, v7, :cond_20

    if-le v1, v7, :cond_28

    :cond_20
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 42
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "i":I
    .end local v3    # "minLen":I
    :cond_26
    move v3, v5

    .restart local v3    # "minLen":I
    goto :goto_d

    .line 47
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    .restart local v2    # "i":I
    :cond_28
    if-eq v0, v1, :cond_39

    .line 48
    invoke-static {v0}, Lsun/misc/ASCIICaseInsensitiveComparator;->toLower(I)I

    move-result v6

    int-to-char v0, v6

    .line 49
    invoke-static {v1}, Lsun/misc/ASCIICaseInsensitiveComparator;->toLower(I)I

    move-result v6

    int-to-char v1, v6

    .line 50
    if-eq v0, v1, :cond_39

    .line 51
    sub-int v6, v0, v1

    return v6

    .line 43
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 55
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_3c
    sub-int v6, v4, v5

    return v6
.end method
