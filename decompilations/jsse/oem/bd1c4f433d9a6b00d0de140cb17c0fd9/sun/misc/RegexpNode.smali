.class Lsun/misc/RegexpNode;
.super Ljava/lang/Object;
.source "RegexpPool.java"


# instance fields
.field c:C

.field depth:I

.field exact:Z

.field firstchild:Lsun/misc/RegexpNode;

.field nextsibling:Lsun/misc/RegexpNode;

.field re:Ljava/lang/String;

.field result:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
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

.method constructor <init>(CI)V
    .registers 4
    .param p1, "C"    # C
    .param p2, "depth"    # I

    .prologue
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
.method add(C)Lsun/misc/RegexpNode;
    .registers 4
    .param p1, "C"    # C

    .prologue
    .line 279
    iget-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    .line 280
    .local v0, "p":Lsun/misc/RegexpNode;
    if-nez v0, :cond_12

    .line 281
    new-instance v0, Lsun/misc/RegexpNode;

    .end local v0    # "p":Lsun/misc/RegexpNode;
    iget v1, p0, Lsun/misc/RegexpNode;->depth:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p1, v1}, Lsun/misc/RegexpNode;-><init>(CI)V

    .line 291
    .restart local v0    # "p":Lsun/misc/RegexpNode;
    :goto_d
    iput-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    .line 292
    return-object v0

    .line 287
    :cond_10
    iget-object v0, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    .line 283
    :cond_12
    if-eqz v0, :cond_19

    .line 284
    iget-char v1, v0, Lsun/misc/RegexpNode;->c:C

    if-ne v1, p1, :cond_10

    .line 285
    return-object v0

    .line 288
    :cond_19
    new-instance v0, Lsun/misc/RegexpNode;

    .end local v0    # "p":Lsun/misc/RegexpNode;
    iget v1, p0, Lsun/misc/RegexpNode;->depth:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p1, v1}, Lsun/misc/RegexpNode;-><init>(CI)V

    .line 289
    .restart local v0    # "p":Lsun/misc/RegexpNode;
    iget-object v1, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    iput-object v1, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    goto :goto_d
.end method

.method find(C)Lsun/misc/RegexpNode;
    .registers 5
    .param p1, "C"    # C

    .prologue
    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    .local v0, "p":Lsun/misc/RegexpNode;
    :goto_3
    if-eqz v0, :cond_d

    .line 298
    iget-char v1, v0, Lsun/misc/RegexpNode;->c:C

    if-ne v1, p1, :cond_a

    .line 299
    return-object v0

    .line 297
    :cond_a
    iget-object v0, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    goto :goto_3

    .line 300
    :cond_d
    return-object v2
.end method

.method print(Ljava/io/PrintStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 303
    iget-object v1, p0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    if-eqz v1, :cond_28

    .line 304
    move-object v0, p0

    .line 305
    .local v0, "p":Lsun/misc/RegexpNode;
    const-string/jumbo v1, "("

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 306
    :goto_b
    if-eqz v0, :cond_36

    .line 307
    iget-char v1, v0, Lsun/misc/RegexpNode;->c:C

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->write(I)V

    .line 308
    iget-object v1, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    if-eqz v1, :cond_1b

    .line 309
    iget-object v1, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    invoke-virtual {v1, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    .line 310
    :cond_1b
    iget-object v0, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    .line 311
    if-eqz v0, :cond_25

    const/16 v1, 0x7c

    :goto_21
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->write(I)V

    goto :goto_b

    :cond_25
    const/16 v1, 0x29

    goto :goto_21

    .line 314
    .end local v0    # "p":Lsun/misc/RegexpNode;
    :cond_28
    iget-char v1, p0, Lsun/misc/RegexpNode;->c:C

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->write(I)V

    .line 315
    iget-object v1, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    if-eqz v1, :cond_36

    .line 316
    iget-object v1, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    invoke-virtual {v1, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    .line 318
    :cond_36
    return-void
.end method
