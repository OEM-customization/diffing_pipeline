.class public Lsun/misc/RegexpPool;
.super Ljava/lang/Object;
.source "RegexpPool.java"


# static fields
.field private static final BIG:I = 0x7fffffff


# instance fields
.field private lastDepth:I

.field private prefixMachine:Lsun/misc/RegexpNode;

.field private suffixMachine:Lsun/misc/RegexpNode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
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

.method private add(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 11
    .param p1, "re"    # Ljava/lang/String;
    .param p2, "ret"    # Ljava/lang/Object;
    .param p3, "replace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/REException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2a

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 168
    .local v2, "len":I
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_1d

    .line 169
    iget-object v3, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    .line 170
    .local v3, "p":Lsun/misc/RegexpNode;
    :goto_f
    const/4 v4, 0x1

    if-le v2, v4, :cond_3c

    .line 171
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lsun/misc/RegexpNode;->add(C)Lsun/misc/RegexpNode;

    move-result-object v3

    goto :goto_f

    .line 173
    .end local v3    # "p":Lsun/misc/RegexpNode;
    :cond_1d
    const/4 v0, 0x0

    .line 174
    .local v0, "exact":Z
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_38

    .line 175
    add-int/lit8 v2, v2, -0x1

    .line 178
    :goto_28
    iget-object v3, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    .line 179
    .restart local v3    # "p":Lsun/misc/RegexpNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    if-ge v1, v2, :cond_3a

    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lsun/misc/RegexpNode;->add(C)Lsun/misc/RegexpNode;

    move-result-object v3

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 177
    .end local v1    # "i":I
    .end local v3    # "p":Lsun/misc/RegexpNode;
    :cond_38
    const/4 v0, 0x1

    goto :goto_28

    .line 181
    .restart local v1    # "i":I
    .restart local v3    # "p":Lsun/misc/RegexpNode;
    :cond_3a
    iput-boolean v0, v3, Lsun/misc/RegexpNode;->exact:Z

    .line 184
    .end local v0    # "exact":Z
    .end local v1    # "i":I
    :cond_3c
    iget-object v4, v3, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    if-eqz v4, :cond_5e

    xor-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_5e

    .line 185
    new-instance v4, Lsun/misc/REException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is a duplicate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/misc/REException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 187
    :cond_5e
    iput-object p1, v3, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    .line 188
    iput-object p2, v3, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    .line 189
    return-void
.end method

.method private matchAfter(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 11
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "lastMatchDepth"    # I

    .prologue
    const/4 v7, 0x0

    .line 192
    iget-object v6, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    .line 193
    .local v6, "p":Lsun/misc/RegexpNode;
    move-object v1, v6

    .line 194
    .local v1, "best":Lsun/misc/RegexpNode;
    const/4 v2, 0x0

    .line 195
    .local v2, "bst":I
    const/4 v0, 0x0

    .line 196
    .local v0, "bend":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 198
    .local v4, "len":I
    if-gtz v4, :cond_d

    .line 199
    return-object v7

    .line 201
    :cond_d
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-eqz v6, :cond_27

    .line 202
    iget-object v7, v6, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    if-eqz v7, :cond_25

    iget v7, v6, Lsun/misc/RegexpNode;->depth:I

    if-ge v7, p2, :cond_25

    .line 203
    iget-boolean v7, v6, Lsun/misc/RegexpNode;->exact:Z

    if-eqz v7, :cond_1e

    if-ne v3, v4, :cond_25

    .line 204
    :cond_1e
    iget v7, v6, Lsun/misc/RegexpNode;->depth:I

    iput v7, p0, Lsun/misc/RegexpPool;->lastDepth:I

    .line 205
    move-object v1, v6

    .line 206
    move v2, v3

    .line 207
    move v0, v4

    .line 209
    :cond_25
    if-lt v3, v4, :cond_49

    .line 214
    :cond_27
    iget-object v6, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    .line 215
    move v3, v4

    :goto_2a
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_54

    if-eqz v6, :cond_54

    .line 216
    iget-object v7, v6, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    if-eqz v7, :cond_40

    iget v7, v6, Lsun/misc/RegexpNode;->depth:I

    if-ge v7, p2, :cond_40

    .line 217
    iget v7, v6, Lsun/misc/RegexpNode;->depth:I

    iput v7, p0, Lsun/misc/RegexpPool;->lastDepth:I

    .line 218
    move-object v1, v6

    .line 219
    const/4 v2, 0x0

    .line 220
    add-int/lit8 v0, v3, 0x1

    .line 222
    :cond_40
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    move-result-object v6

    goto :goto_2a

    .line 211
    :cond_49
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    move-result-object v6

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 224
    :cond_54
    iget-object v5, v1, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    .line 225
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_66

    instance-of v7, v5, Lsun/misc/RegexpTarget;

    if-eqz v7, :cond_66

    .line 226
    check-cast v5, Lsun/misc/RegexpTarget;

    .end local v5    # "o":Ljava/lang/Object;
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lsun/misc/RegexpTarget;->found(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 227
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_66
    return-object v5
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "re"    # Ljava/lang/String;
    .param p2, "ret"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/REException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsun/misc/RegexpPool;->add(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 60
    return-void
.end method

.method public delete(Ljava/lang/String;)Ljava/lang/Object;
    .registers 11
    .param p1, "re"    # Ljava/lang/String;

    .prologue
    const v8, 0x7fffffff

    const/4 v7, 0x0

    .line 89
    const/4 v3, 0x0

    .line 90
    .local v3, "o":Ljava/lang/Object;
    iget-object v4, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    .line 91
    .local v4, "p":Lsun/misc/RegexpNode;
    move-object v0, v4

    .line 92
    .local v0, "best":Lsun/misc/RegexpNode;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 94
    .local v2, "len":I
    const/4 v5, 0x1

    .line 96
    .local v5, "prefix":Z
    const-string/jumbo v6, "*"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 97
    const-string/jumbo v6, "*"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 96
    if-eqz v6, :cond_25

    .line 98
    :cond_23
    add-int/lit8 v2, v2, 0x1

    .line 100
    :cond_25
    if-gtz v2, :cond_28

    .line 101
    return-object v7

    .line 104
    :cond_28
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    if-eqz v4, :cond_3c

    .line 105
    iget-object v6, v4, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    if-eqz v6, :cond_3a

    iget v6, v4, Lsun/misc/RegexpNode;->depth:I

    if-ge v6, v8, :cond_3a

    .line 106
    iget-boolean v6, v4, Lsun/misc/RegexpNode;->exact:Z

    if-eqz v6, :cond_39

    if-ne v1, v2, :cond_3a

    .line 107
    :cond_39
    move-object v0, v4

    .line 109
    :cond_3a
    if-lt v1, v2, :cond_58

    .line 115
    :cond_3c
    iget-object v4, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    .line 116
    move v1, v2

    :goto_3f
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_63

    if-eqz v4, :cond_63

    .line 117
    iget-object v6, v4, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    if-eqz v6, :cond_4f

    iget v6, v4, Lsun/misc/RegexpNode;->depth:I

    if-ge v6, v8, :cond_4f

    .line 118
    const/4 v5, 0x0

    .line 119
    move-object v0, v4

    .line 121
    :cond_4f
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    move-result-object v4

    goto :goto_3f

    .line 111
    :cond_58
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    move-result-object v4

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 125
    :cond_63
    if-eqz v5, :cond_72

    .line 126
    iget-object v6, v0, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 127
    iget-object v3, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    .line 128
    iput-object v7, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    .line 137
    .end local v3    # "o":Ljava/lang/Object;
    :cond_71
    :goto_71
    return-object v3

    .line 132
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_72
    iget-object v6, v0, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 133
    iget-object v3, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    .line 134
    iput-object v7, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    goto :goto_71
.end method

.method public match(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 154
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lsun/misc/RegexpPool;->matchAfter(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public matchNext(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 162
    iget v0, p0, Lsun/misc/RegexpPool;->lastDepth:I

    invoke-direct {p0, p1, v0}, Lsun/misc/RegexpPool;->matchAfter(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 245
    const-string/jumbo v0, "Regexp pool:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    if-eqz v0, :cond_1f

    .line 247
    const-string/jumbo v0, " Suffix machine: "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    invoke-virtual {v0, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    .line 249
    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 251
    :cond_1f
    iget-object v0, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    if-eqz v0, :cond_38

    .line 252
    const-string/jumbo v0, " Prefix machine: "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    invoke-virtual {v0, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    .line 254
    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 256
    :cond_38
    return-void
.end method

.method public replace(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "re"    # Ljava/lang/String;
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 76
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Lsun/misc/RegexpPool;->add(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    .line 80
    :goto_4
    return-void

    .line 77
    :catch_5
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_4
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 240
    const v0, 0x7fffffff

    iput v0, p0, Lsun/misc/RegexpPool;->lastDepth:I

    .line 241
    return-void
.end method
