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
        Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;,
        Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
    }
.end annotation


# instance fields
.field protected greylist-max-o c0:C

.field protected greylist-max-o child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

.field protected greylist-max-o key:Ljava/lang/String;

.field protected greylist-max-o sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

.field protected greylist-max-o value:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .registers 6
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4027
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    .line 4028
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    .line 4029
    iput-object p3, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4030
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_15

    .line 4031
    const v0, 0xffff

    iput-char v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    goto :goto_1e

    .line 4033
    :cond_15
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    .line 4035
    :goto_1e
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;Ljava/time/format/DateTimeFormatterBuilder$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .param p4, "x3"    # Ljava/time/format/DateTimeFormatterBuilder$1;

    .line 4018
    invoke-direct {p0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-void
.end method

.method private greylist-max-o add0(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 4095
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4096
    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixLength(Ljava/lang/String;)I

    move-result v0

    .line 4097
    .local v0, "prefixLen":I
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_43

    .line 4098
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 4099
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4100
    .local v1, "subKey":Ljava/lang/String;
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4101
    .local v5, "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :goto_1f
    if-eqz v5, :cond_35

    .line 4102
    iget-char v6, v5, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 4103
    invoke-direct {v5, v1, p2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 4105
    :cond_32
    iget-object v5, v5, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    goto :goto_1f

    .line 4108
    :cond_35
    invoke-virtual {p0, v1, p2, v4}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v2

    .line 4109
    .end local v5    # "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .local v2, "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v4, v2, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4110
    iput-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4111
    return v3

    .line 4117
    .end local v1    # "subKey":Ljava/lang/String;
    .end local v2    # "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_40
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    .line 4118
    return v3

    .line 4121
    :cond_43
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {p0, v1, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    .line 4122
    .local v1, "n1":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    .line 4123
    iput-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6e

    .line 4125
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v4}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v2

    .line 4126
    .local v2, "n2":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v2, v5, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4127
    iput-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    .line 4128
    .end local v2    # "n2":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    goto :goto_70

    .line 4129
    :cond_6e
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    .line 4131
    :goto_70
    return v3
.end method

.method public static greylist-max-o newTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 4
    .param p0, "context"    # Ljava/time/format/DateTimeParseContext;

    .line 4047
    invoke-virtual {p0}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 4048
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-direct {v0, v1, v2, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0

    .line 4050
    :cond_f
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    invoke-direct {v0, v1, v2, v2, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;Ljava/time/format/DateTimeFormatterBuilder$1;)V

    return-object v0
.end method

.method public static greylist-max-o newTree(Ljava/util/Set;Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 5
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/time/format/DateTimeParseContext;",
            ")",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;"
        }
    .end annotation

    .line 4061
    .local p0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v0

    .line 4062
    .local v0, "tree":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4063
    .local v2, "k":Ljava/lang/String;
    invoke-direct {v0, v2, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4064
    .end local v2    # "k":Ljava/lang/String;
    goto :goto_8

    .line 4065
    :cond_18
    return-object v0
.end method

.method private greylist-max-o prefixLength(Ljava/lang/String;)I
    .registers 5
    .param p1, "k"    # Ljava/lang/String;

    .line 4226
    const/4 v0, 0x0

    .line 4227
    .local v0, "off":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 4228
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v1

    if-nez v1, :cond_20

    .line 4229
    return v0

    .line 4231
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4233
    :cond_23
    return v0
.end method


# virtual methods
.method public greylist-max-o add(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 4091
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o copyTree()Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 5

    .line 4072
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    .line 4073
    .local v0, "copy":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v1, :cond_14

    .line 4074
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->copyTree()Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    iput-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4076
    :cond_14
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v1, :cond_1e

    .line 4077
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->copyTree()Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    iput-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4079
    :cond_1e
    return-object v0
.end method

.method protected greylist-max-o isEqual(CC)Z
    .registers 4
    .param p1, "c1"    # C
    .param p2, "c2"    # C

    .line 4205
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public greylist-max-o match(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I
    .param p3, "end"    # I

    .line 4143
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixOf(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 4144
    const/4 v0, 0x0

    return-object v0

    .line 4146
    :cond_8
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v0, :cond_32

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    move p2, v0

    if-eq v0, p3, :cond_32

    .line 4147
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4149
    .local v0, "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_18
    iget-char v1, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4150
    invoke-virtual {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    .line 4151
    .local v1, "found":Ljava/lang/String;
    if-eqz v1, :cond_2b

    .line 4152
    return-object v1

    .line 4154
    :cond_2b
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v2

    .line 4156
    .end local v1    # "found":Ljava/lang/String;
    :cond_2e
    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4157
    if-nez v0, :cond_18

    .line 4159
    .end local v0    # "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_32
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 4172
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 4173
    .local v0, "off":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4174
    .local v1, "end":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixOf(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-nez v2, :cond_10

    .line 4175
    const/4 v2, 0x0

    return-object v2

    .line 4177
    :cond_10
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 4178
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v2, :cond_39

    if-eq v0, v1, :cond_39

    .line 4179
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4181
    .local v2, "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_1f
    iget-char v3, v2, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 4182
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 4183
    invoke-virtual {v2, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v3

    .line 4184
    .local v3, "found":Ljava/lang/String;
    if-eqz v3, :cond_39

    .line 4185
    return-object v3

    .line 4189
    .end local v3    # "found":Ljava/lang/String;
    :cond_35
    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4190
    if-nez v2, :cond_1f

    .line 4192
    .end local v2    # "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_39
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 4193
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v2
.end method

.method protected greylist-max-o newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4201
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-direct {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0
.end method

.method protected greylist-max-o prefixOf(Ljava/lang/CharSequence;II)Z
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I
    .param p3, "end"    # I

    .line 4209
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 4210
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 4212
    :cond_e
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4213
    .local v0, "len":I
    sub-int v1, p3, p2

    const/4 v2, 0x0

    if-le v0, v1, :cond_1a

    .line 4214
    return v2

    .line 4216
    :cond_1a
    const/4 v1, 0x0

    .line 4217
    .local v1, "off0":I
    :goto_1b
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "len":I
    .local v3, "len":I
    if-lez v0, :cond_38

    .line 4218
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "off0":I
    .local v4, "off0":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-virtual {p0, v0, p2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result p2

    if-nez p2, :cond_34

    .line 4219
    return v2

    .line 4218
    :cond_34
    move p2, v1

    move v0, v3

    move v1, v4

    goto :goto_1b

    .line 4222
    .end local v4    # "off0":I
    .local v1, "off0":I
    .restart local p2    # "off":I
    :cond_38
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o toKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "k"    # Ljava/lang/String;

    .line 4197
    return-object p1
.end method
