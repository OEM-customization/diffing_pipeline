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
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x77035c7d5c50e5ceL


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String$CaseInsensitiveComparator;)V
    .registers 2
    .param p1, "-this0"    # Ljava/lang/String$CaseInsensitiveComparator;

    .prologue
    invoke-direct {p0}, Ljava/lang/String$CaseInsensitiveComparator;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1163
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1139
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String$CaseInsensitiveComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 1140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1141
    .local v4, "n1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 1142
    .local v5, "n2":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1143
    .local v3, "min":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v3, :cond_33

    .line 1144
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1145
    .local v0, "c1":C
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1146
    .local v1, "c2":C
    if-eq v0, v1, :cond_30

    .line 1147
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 1148
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 1149
    if-eq v0, v1, :cond_30

    .line 1150
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 1151
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 1152
    if-eq v0, v1, :cond_30

    .line 1154
    sub-int v6, v0, v1

    return v6

    .line 1143
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1159
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_33
    sub-int v6, v4, v5

    return v6
.end method
