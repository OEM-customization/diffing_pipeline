.class Lsun/misc/RegexpNode;
.super Ljava/lang/Object;
.source "RegexpPool.java"


# instance fields
.field blacklist c:C

.field blacklist depth:I

.field blacklist exact:Z

.field blacklist firstchild:Lsun/misc/RegexpNode;

.field blacklist nextsibling:Lsun/misc/RegexpNode;

.field blacklist re:Ljava/lang/String;

.field blacklist result:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    .line 271
    const/16 v0, 0x23

    iput-char v0, p0, Lsun/misc/RegexpNode;->c:C

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/RegexpNode;->depth:I

    .line 273
    return-void
.end method

.method constructor blacklist <init>(CI)V
    .registers 4
    .param p1, "C"    # C
    .param p2, "depth"    # I

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    .line 275
    iput-char p1, p0, Lsun/misc/RegexpNode;->c:C

    .line 276
    iput p2, p0, Lsun/misc/RegexpNode;->depth:I

    .line 277
    return-void
.end method


# virtual methods
.method blacklist add(C)Lsun/misc/RegexpNode;
    .registers 5
    .param p1, "C"    # C

    .line 279
    iget-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    .line 280
    .local v0, "p":Lsun/misc/RegexpNode;
    if-nez v0, :cond_f

    .line 281
    new-instance v1, Lsun/misc/RegexpNode;

    iget v2, p0, Lsun/misc/RegexpNode;->depth:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, p1, v2}, Lsun/misc/RegexpNode;-><init>(CI)V

    move-object v0, v1

    goto :goto_27

    .line 283
    :cond_f
    :goto_f
    if-eqz v0, :cond_19

    .line 284
    iget-char v1, v0, Lsun/misc/RegexpNode;->c:C

    if-ne v1, p1, :cond_16

    .line 285
    return-object v0

    .line 287
    :cond_16
    iget-object v0, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    goto :goto_f

    .line 288
    :cond_19
    new-instance v1, Lsun/misc/RegexpNode;

    iget v2, p0, Lsun/misc/RegexpNode;->depth:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, p1, v2}, Lsun/misc/RegexpNode;-><init>(CI)V

    move-object v0, v1

    .line 289
    iget-object v1, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    iput-object v1, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    .line 291
    :goto_27
    iput-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    .line 292
    return-object v0
.end method

.method blacklist find(C)Lsun/misc/RegexpNode;
    .registers 4
    .param p1, "C"    # C

    .line 295
    iget-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    .line 296
    .local v0, "p":Lsun/misc/RegexpNode;
    :goto_2
    if-eqz v0, :cond_c

    .line 298
    iget-char v1, v0, Lsun/misc/RegexpNode;->c:C

    if-ne v1, p1, :cond_9

    .line 299
    return-object v0

    .line 297
    :cond_9
    iget-object v0, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    goto :goto_2

    .line 300
    .end local v0    # "p":Lsun/misc/RegexpNode;
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist print(Ljava/io/PrintStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 303
    iget-object v0, p0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    if-eqz v0, :cond_26

    .line 304
    move-object v0, p0

    .line 305
    .local v0, "p":Lsun/misc/RegexpNode;
    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 306
    :goto_a
    if-eqz v0, :cond_25

    .line 307
    iget-char v1, v0, Lsun/misc/RegexpNode;->c:C

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->write(I)V

    .line 308
    iget-object v1, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    if-eqz v1, :cond_18

    .line 309
    invoke-virtual {v1, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    .line 310
    :cond_18
    iget-object v0, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    .line 311
    if-eqz v0, :cond_1f

    const/16 v1, 0x7c

    goto :goto_21

    :cond_1f
    const/16 v1, 0x29

    :goto_21
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->write(I)V

    goto :goto_a

    .line 313
    .end local v0    # "p":Lsun/misc/RegexpNode;
    :cond_25
    goto :goto_32

    .line 314
    :cond_26
    iget-char v0, p0, Lsun/misc/RegexpNode;->c:C

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->write(I)V

    .line 315
    iget-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    if-eqz v0, :cond_32

    .line 316
    invoke-virtual {v0, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    .line 318
    :cond_32
    :goto_32
    return-void
.end method
