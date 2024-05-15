.class public Lsun/security/util/AlgorithmDecomposer;
.super Ljava/lang/Object;
.source "AlgorithmDecomposer.java"


# static fields
.field private static final greylist-max-o pattern:Ljava/util/regex/Pattern;

.field private static final greylist-max-o transPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 37
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsun/security/util/AlgorithmDecomposer;->transPattern:Ljava/util/regex/Pattern;

    .line 38
    nop

    .line 39
    const-string v0, "with|and"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsun/security/util/AlgorithmDecomposer;->pattern:Ljava/util/regex/Pattern;

    .line 38
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o decomposeImpl(Ljava/lang/String;)Ljava/util/Set;
    .registers 12
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lsun/security/util/AlgorithmDecomposer;->transPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "transTockens":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 47
    .local v1, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_39

    aget-object v5, v0, v4

    .line 48
    .local v5, "transTocken":Ljava/lang/String;
    if-eqz v5, :cond_36

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1b

    .line 49
    goto :goto_36

    .line 57
    :cond_1b
    sget-object v6, Lsun/security/util/AlgorithmDecomposer;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "tokens":[Ljava/lang/String;
    array-length v7, v6

    move v8, v3

    :goto_23
    if-ge v8, v7, :cond_36

    aget-object v9, v6, v8

    .line 60
    .local v9, "token":Ljava/lang/String;
    if-eqz v9, :cond_33

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_30

    .line 61
    goto :goto_33

    .line 64
    :cond_30
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v9    # "token":Ljava/lang/String;
    :cond_33
    :goto_33
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 47
    .end local v5    # "transTocken":Ljava/lang/String;
    .end local v6    # "tokens":[Ljava/lang/String;
    :cond_36
    :goto_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 67
    :cond_39
    return-object v1
.end method

.method public static blacklist decomposeOneHash(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    if-eqz p0, :cond_31

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_31

    .line 154
    :cond_9
    invoke-static {p0}, Lsun/security/util/AlgorithmDecomposer;->decomposeImpl(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 156
    .local v0, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "SHA-1"

    const-string v2, "SHA1"

    invoke-static {v0, v1, v2}, Lsun/security/util/AlgorithmDecomposer;->hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "SHA-224"

    const-string v2, "SHA224"

    invoke-static {v0, v1, v2}, Lsun/security/util/AlgorithmDecomposer;->hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "SHA-256"

    const-string v2, "SHA256"

    invoke-static {v0, v1, v2}, Lsun/security/util/AlgorithmDecomposer;->hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "SHA-384"

    const-string v2, "SHA384"

    invoke-static {v0, v1, v2}, Lsun/security/util/AlgorithmDecomposer;->hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "SHA-512"

    const-string v2, "SHA512"

    invoke-static {v0, v1, v2}, Lsun/security/util/AlgorithmDecomposer;->hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-object v0

    .line 151
    .end local v0    # "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_31
    :goto_31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method private static greylist-max-o hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "find"    # Ljava/lang/String;
    .param p2, "replace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 137
    .local p0, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 138
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 139
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_f
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 143
    :cond_12
    return-void
.end method

.method public static blacklist hashName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 170
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist decompose(Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    if-eqz p1, :cond_b9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_b9

    .line 84
    :cond_a
    invoke-static {p1}, Lsun/security/util/AlgorithmDecomposer;->decomposeImpl(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 94
    .local v0, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "SHA1"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SHA-1"

    if-eqz v2, :cond_21

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 95
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_21
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 98
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_30
    const-string v1, "SHA224"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SHA-224"

    if-eqz v2, :cond_43

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 103
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_43
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 106
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_52
    const-string v1, "SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SHA-256"

    if-eqz v2, :cond_65

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 111
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_65
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 114
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_74
    const-string v1, "SHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SHA-384"

    if-eqz v2, :cond_87

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 119
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_87
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_96

    .line 122
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_96
    const-string v1, "SHA512"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SHA-512"

    if-eqz v2, :cond_a9

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    .line 127
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_a9
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b8

    .line 130
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_b8
    return-object v0

    .line 81
    .end local v0    # "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b9
    :goto_b9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method
