.class Ljava/lang/String$CaseInsensitiveComparator;
.super Ljava/lang/Object;
.source "String.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaseInsensitiveComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x77035c7d5c50e5ceL


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String$1;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String$1;

    .line 1189
    invoke-direct {p0}, Ljava/lang/String$CaseInsensitiveComparator;-><init>()V

    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2

    .line 1218
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1189
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String$CaseInsensitiveComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .line 1195
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1196
    .local v0, "n1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1197
    .local v1, "n2":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1198
    .local v2, "min":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_33

    .line 1199
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1200
    .local v4, "c1":C
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1201
    .local v5, "c2":C
    if-eq v4, v5, :cond_30

    .line 1202
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 1203
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 1204
    if-eq v4, v5, :cond_30

    .line 1205
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 1206
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 1207
    if-eq v4, v5, :cond_30

    .line 1209
    sub-int v6, v4, v5

    return v6

    .line 1198
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1214
    .end local v3    # "i":I
    :cond_33
    sub-int v3, v0, v1

    return v3
.end method
