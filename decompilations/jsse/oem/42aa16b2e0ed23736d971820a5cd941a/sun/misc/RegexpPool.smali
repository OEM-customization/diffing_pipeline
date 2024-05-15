.class public Lsun/misc/RegexpPool;
.super Ljava/lang/Object;
.source "RegexpPool.java"


# static fields
.field private static final blacklist BIG:I = 0x7fffffff


# instance fields
.field private blacklist lastDepth:I

.field private blacklist prefixMachine:Lsun/misc/RegexpNode;

.field private blacklist suffixMachine:Lsun/misc/RegexpNode;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lsun/misc/RegexpNode;

    invoke-direct {v0}, Lsun/misc/RegexpNode;-><init>()V

    iput-object v0, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    .line 40
    new-instance v0, Lsun/misc/RegexpNode;

    invoke-direct {v0}, Lsun/misc/RegexpNode;-><init>()V

    iput-object v0, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    .line 42
    const v0, 0x7fffffff

    iput v0, p0, Lsun/misc/RegexpPool;->lastDepth:I

    .line 45
    return-void
.end method

.method private blacklist add(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 9
    .param p1, "re"    # Ljava/lang/String;
    .param p2, "ret"    # Ljava/lang/Object;
    .param p3, "replace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/REException;
        }
    .end annotation

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 168
    .local v0, "len":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_1d

    .line 169
    iget-object v1, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    .line 170
    .local v1, "p":Lsun/misc/RegexpNode;
    :goto_f
    const/4 v2, 0x1

    if-le v0, v2, :cond_3d

    .line 171
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lsun/misc/RegexpNode;->add(C)Lsun/misc/RegexpNode;

    move-result-object v1

    goto :goto_f

    .line 173
    .end local v1    # "p":Lsun/misc/RegexpNode;
    :cond_1d
    const/4 v1, 0x0

    .line 174
    .local v1, "exact":Z
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_29

    .line 175
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 177
    :cond_29
    const/4 v1, 0x1

    .line 178
    :goto_2a
    iget-object v2, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    .line 179
    .local v2, "p":Lsun/misc/RegexpNode;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2d
    if-ge v3, v0, :cond_3a

    .line 180
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lsun/misc/RegexpNode;->add(C)Lsun/misc/RegexpNode;

    move-result-object v2

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 181
    .end local v3    # "i":I
    :cond_3a
    iput-boolean v1, v2, Lsun/misc/RegexpNode;->exact:Z

    move-object v1, v2

    .line 184
    .end local v2    # "p":Lsun/misc/RegexpNode;
    .local v1, "p":Lsun/misc/RegexpNode;
    :cond_3d
    iget-object v2, v1, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    if-eqz v2, :cond_5b

    if-eqz p3, :cond_44

    goto :goto_5b

    .line 185
    :cond_44
    new-instance v2, Lsun/misc/REException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is a duplicate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/misc/REException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    :cond_5b
    :goto_5b
    iput-object p1, v1, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    .line 188
    iput-object p2, v1, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    .line 189
    return-void
.end method

.method private blacklist matchAfter(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 12
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "lastMatchDepth"    # I

    .line 192
    iget-object v0, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    .line 193
    .local v0, "p":Lsun/misc/RegexpNode;
    move-object v1, v0

    .line 194
    .local v1, "best":Lsun/misc/RegexpNode;
    const/4 v2, 0x0

    .line 195
    .local v2, "bst":I
    const/4 v3, 0x0

    .line 196
    .local v3, "bend":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 198
    .local v4, "len":I
    if-gtz v4, :cond_d

    .line 199
    const/4 v5, 0x0

    return-object v5

    .line 201
    :cond_d
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e
    if-eqz v0, :cond_33

    .line 202
    iget-object v6, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    if-eqz v6, :cond_25

    iget v6, v0, Lsun/misc/RegexpNode;->depth:I

    if-ge v6, p2, :cond_25

    iget-boolean v6, v0, Lsun/misc/RegexpNode;->exact:Z

    if-eqz v6, :cond_1e

    if-ne v5, v4, :cond_25

    .line 204
    :cond_1e
    iget v6, v0, Lsun/misc/RegexpNode;->depth:I

    iput v6, p0, Lsun/misc/RegexpPool;->lastDepth:I

    .line 205
    move-object v1, v0

    .line 206
    move v2, v5

    .line 207
    move v3, v4

    .line 209
    :cond_25
    if-lt v5, v4, :cond_28

    .line 210
    goto :goto_33

    .line 211
    :cond_28
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v6}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    move-result-object v0

    .line 201
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 214
    :cond_33
    :goto_33
    iget-object v0, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    .line 215
    move v5, v4

    :goto_36
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_55

    if-eqz v0, :cond_55

    .line 216
    iget-object v6, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    if-eqz v6, :cond_4c

    iget v6, v0, Lsun/misc/RegexpNode;->depth:I

    if-ge v6, p2, :cond_4c

    .line 217
    iget v6, v0, Lsun/misc/RegexpNode;->depth:I

    iput v6, p0, Lsun/misc/RegexpPool;->lastDepth:I

    .line 218
    move-object v1, v0

    .line 219
    const/4 v2, 0x0

    .line 220
    add-int/lit8 v3, v5, 0x1

    .line 222
    :cond_4c
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v6}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    move-result-object v0

    goto :goto_36

    .line 224
    :cond_55
    iget-object v6, v1, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    .line 225
    .local v6, "o":Ljava/lang/Object;
    if-eqz v6, :cond_68

    instance-of v7, v6, Lsun/misc/RegexpTarget;

    if-eqz v7, :cond_68

    .line 226
    move-object v7, v6

    check-cast v7, Lsun/misc/RegexpTarget;

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lsun/misc/RegexpTarget;->found(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 227
    :cond_68
    return-object v6
.end method


# virtual methods
.method public blacklist add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "re"    # Ljava/lang/String;
    .param p2, "ret"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/REException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsun/misc/RegexpPool;->add(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 60
    return-void
.end method

.method public blacklist delete(Ljava/lang/String;)Ljava/lang/Object;
    .registers 11
    .param p1, "re"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    .line 91
    .local v1, "p":Lsun/misc/RegexpNode;
    move-object v2, v1

    .line 92
    .local v2, "best":Lsun/misc/RegexpNode;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 94
    .local v3, "len":I
    const/4 v4, 0x1

    .line 96
    .local v4, "prefix":Z
    const-string v5, "*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 97
    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 98
    :cond_19
    add-int/lit8 v3, v3, 0x1

    .line 100
    :cond_1b
    const/4 v5, 0x0

    if-gtz v3, :cond_1f

    .line 101
    return-object v5

    .line 104
    :cond_1f
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_20
    const v7, 0x7fffffff

    if-eqz v1, :cond_42

    .line 105
    iget-object v8, v1, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    if-eqz v8, :cond_34

    iget v8, v1, Lsun/misc/RegexpNode;->depth:I

    if-ge v8, v7, :cond_34

    iget-boolean v8, v1, Lsun/misc/RegexpNode;->exact:Z

    if-eqz v8, :cond_33

    if-ne v6, v3, :cond_34

    .line 107
    :cond_33
    move-object v2, v1

    .line 109
    :cond_34
    if-lt v6, v3, :cond_37

    .line 110
    goto :goto_42

    .line 111
    :cond_37
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v7}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    move-result-object v1

    .line 104
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 115
    :cond_42
    :goto_42
    iget-object v1, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    .line 116
    move v6, v3

    :goto_45
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_5e

    if-eqz v1, :cond_5e

    .line 117
    iget-object v8, v1, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    if-eqz v8, :cond_55

    iget v8, v1, Lsun/misc/RegexpNode;->depth:I

    if-ge v8, v7, :cond_55

    .line 118
    const/4 v4, 0x0

    .line 119
    move-object v2, v1

    .line 121
    :cond_55
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v1, v8}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    move-result-object v1

    goto :goto_45

    .line 125
    :cond_5e
    if-eqz v4, :cond_6d

    .line 126
    iget-object v7, v2, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 127
    iget-object v0, v2, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    .line 128
    iput-object v5, v2, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    goto :goto_79

    .line 132
    :cond_6d
    iget-object v7, v2, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 133
    iget-object v0, v2, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    .line 134
    iput-object v5, v2, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    .line 137
    :cond_79
    :goto_79
    return-object v0
.end method

.method public blacklist match(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 154
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lsun/misc/RegexpPool;->matchAfter(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist matchNext(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 162
    iget v0, p0, Lsun/misc/RegexpPool;->lastDepth:I

    invoke-direct {p0, p1, v0}, Lsun/misc/RegexpPool;->matchAfter(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist print(Ljava/io/PrintStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 245
    const-string v0, "Regexp pool:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    const-string v1, "\n"

    if-eqz v0, :cond_1c

    .line 247
    const-string v0, " Suffix machine: "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    invoke-virtual {v0, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    .line 249
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 251
    :cond_1c
    iget-object v0, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    if-eqz v0, :cond_31

    .line 252
    const-string v0, " Prefix machine: "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    invoke-virtual {v0, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    .line 254
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 256
    :cond_31
    return-void
.end method

.method public blacklist replace(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "re"    # Ljava/lang/String;
    .param p2, "ret"    # Ljava/lang/Object;

    .line 76
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lsun/misc/RegexpPool;->add(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    .line 79
    goto :goto_6

    .line 77
    :catch_5
    move-exception v0

    .line 80
    :goto_6
    return-void
.end method

.method public blacklist reset()V
    .registers 2

    .line 240
    const v0, 0x7fffffff

    iput v0, p0, Lsun/misc/RegexpPool;->lastDepth:I

    .line 241
    return-void
.end method
