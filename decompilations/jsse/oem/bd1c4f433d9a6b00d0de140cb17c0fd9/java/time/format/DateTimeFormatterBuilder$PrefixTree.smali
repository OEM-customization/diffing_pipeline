.class Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrefixTree"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;,
        Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;
    }
.end annotation


# instance fields
.field protected c0:C

.field protected child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

.field protected key:Ljava/lang/String;

.field protected sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

.field protected value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .registers 6
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .prologue
    const/4 v1, 0x0

    .line 3976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3977
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    .line 3978
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    .line 3979
    iput-object p3, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 3980
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    .line 3981
    const v0, 0xffff

    iput-char v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    .line 3985
    :goto_15
    return-void

    .line 3983
    :cond_16
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    goto :goto_15
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .param p4, "-this3"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-void
.end method

.method private add0(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4045
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4046
    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixLength(Ljava/lang/String;)I

    move-result v3

    .line 4047
    .local v3, "prefixLen":I
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_43

    .line 4048
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_40

    .line 4049
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 4050
    .local v4, "subKey":Ljava/lang/String;
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4051
    .local v0, "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :goto_1f
    if-eqz v0, :cond_35

    .line 4052
    iget-char v5, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 4053
    invoke-direct {v0, v4, p2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5

    .line 4055
    :cond_32
    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    goto :goto_1f

    .line 4058
    :cond_35
    invoke-virtual {p0, v4, p2, v8}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v0

    .line 4059
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v5, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4060
    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4061
    return v9

    .line 4067
    .end local v0    # "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .end local v4    # "subKey":Ljava/lang/String;
    :cond_40
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    .line 4068
    return v9

    .line 4071
    :cond_43
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {p0, v5, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    .line 4072
    .local v1, "n1":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    .line 4073
    iput-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4074
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_6e

    .line 4075
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p2, v8}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v2

    .line 4076
    .local v2, "n2":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v2, v5, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4077
    iput-object v8, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    .line 4081
    .end local v2    # "n2":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :goto_6d
    return v9

    .line 4079
    :cond_6e
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    goto :goto_6d
.end method

.method public static newTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 4
    .param p0, "context"    # Ljava/time/format/DateTimeParseContext;

    .prologue
    const/4 v2, 0x0

    .line 3997
    invoke-virtual {p0}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3998
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, v2, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0

    .line 4000
    :cond_10
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, v2, v2, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;)V

    return-object v0
.end method

.method public static newTree(Ljava/util/Set;Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 6
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/time/format/DateTimeParseContext;",
            ")",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;"
        }
    .end annotation

    .prologue
    .line 4011
    .local p0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v2

    .line 4012
    .local v2, "tree":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "k$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4013
    .local v0, "k":Ljava/lang/String;
    invoke-direct {v2, v0, v0}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    .line 4015
    .end local v0    # "k":Ljava/lang/String;
    :cond_18
    return-object v2
.end method

.method private prefixLength(Ljava/lang/String;)I
    .registers 5
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    .line 4176
    const/4 v0, 0x0

    .line 4177
    .local v0, "off":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 4178
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v1

    if-nez v1, :cond_20

    .line 4179
    return v0

    .line 4181
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4183
    :cond_23
    return v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 4041
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public copyTree()Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4022
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    .line 4023
    .local v0, "copy":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v1, :cond_16

    .line 4024
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->copyTree()Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    iput-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4026
    :cond_16
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v1, :cond_22

    .line 4027
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->copyTree()Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    iput-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4029
    :cond_22
    return-object v0
.end method

.method protected isEqual(CC)Z
    .registers 4
    .param p1, "c1"    # C
    .param p2, "c2"    # C

    .prologue
    .line 4155
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public match(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 4093
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixOf(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-nez v2, :cond_8

    .line 4094
    return-object v3

    .line 4096
    :cond_8
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v2, :cond_31

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p2, v2

    if-eq p2, p3, :cond_31

    .line 4097
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4099
    .local v0, "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_17
    iget-char v2, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 4100
    invoke-virtual {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    .line 4101
    .local v1, "found":Ljava/lang/String;
    if-eqz v1, :cond_2a

    .line 4102
    return-object v1

    .line 4104
    :cond_2a
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v2

    .line 4106
    .end local v1    # "found":Ljava/lang/String;
    :cond_2d
    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4107
    if-nez v0, :cond_17

    .line 4109
    .end local v0    # "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_31
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v2
.end method

.method public match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/4 v5, 0x0

    .line 4122
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 4123
    .local v3, "off":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4124
    .local v1, "end":I
    invoke-virtual {p0, p1, v3, v1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixOf(Ljava/lang/CharSequence;II)Z

    move-result v4

    if-nez v4, :cond_10

    .line 4125
    return-object v5

    .line 4127
    :cond_10
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 4128
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v4, :cond_39

    if-eq v3, v1, :cond_39

    .line 4129
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4131
    .local v0, "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_1f
    iget-char v4, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 4132
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 4133
    invoke-virtual {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v2

    .line 4134
    .local v2, "found":Ljava/lang/String;
    if-eqz v2, :cond_39

    .line 4135
    return-object v2

    .line 4139
    .end local v2    # "found":Ljava/lang/String;
    :cond_35
    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4140
    if-nez v0, :cond_1f

    .line 4142
    .end local v0    # "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_39
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 4143
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v4
.end method

.method protected newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .prologue
    .line 4151
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-direct {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0
.end method

.method protected prefixOf(Ljava/lang/CharSequence;II)Z
    .registers 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v7, 0x0

    .line 4159
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 4160
    check-cast p1, Ljava/lang/String;

    .end local p1    # "text":Ljava/lang/CharSequence;
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    return v5

    .line 4162
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_e
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 4163
    .local v0, "len":I
    sub-int v5, p3, p2

    if-le v0, v5, :cond_19

    .line 4164
    return v7

    .line 4166
    :cond_19
    const/4 v3, 0x0

    .local v3, "off0":I
    move v4, v3

    .end local v3    # "off0":I
    .local v4, "off0":I
    move v1, v0

    .end local v0    # "len":I
    .local v1, "len":I
    move v2, p2

    .line 4167
    .end local p2    # "off":I
    .local v2, "off":I
    :goto_1d
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "len":I
    .restart local v0    # "len":I
    if-lez v1, :cond_3a

    .line 4168
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "off0":I
    .restart local v3    # "off0":I
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v5

    if-nez v5, :cond_36

    .line 4169
    return v7

    :cond_36
    move v4, v3

    .end local v3    # "off0":I
    .restart local v4    # "off0":I
    move v1, v0

    .end local v0    # "len":I
    .restart local v1    # "len":I
    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_1d

    .line 4172
    .end local v1    # "len":I
    .restart local v0    # "len":I
    :cond_3a
    const/4 v5, 0x1

    return v5
.end method

.method protected toKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    .line 4147
    return-object p1
.end method
