.class Lsun/net/ftp/impl/FtpClient$MLSxParser;
.super Ljava/lang/Object;
.source "FtpClient.java"

# interfaces
.implements Lsun/net/ftp/FtpDirParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/ftp/impl/FtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MLSxParser"
.end annotation


# instance fields
.field private df:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lsun/net/ftp/impl/FtpClient;


# direct methods
.method private constructor <init>(Lsun/net/ftp/impl/FtpClient;)V
    .registers 4
    .param p1, "this$0"    # Lsun/net/ftp/impl/FtpClient;

    .prologue
    .line 292
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$MLSxParser;->this$0:Lsun/net/ftp/impl/FtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient$MLSxParser;->df:Ljava/text/SimpleDateFormat;

    .line 292
    return-void
.end method

.method synthetic constructor <init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient$MLSxParser;)V
    .registers 3
    .param p1, "this$0"    # Lsun/net/ftp/impl/FtpClient;
    .param p2, "-this1"    # Lsun/net/ftp/impl/FtpClient$MLSxParser;

    .prologue
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient$MLSxParser;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    return-void
.end method


# virtual methods
.method public parseLine(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .registers 12
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 297
    const/4 v5, 0x0

    .line 298
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v8, ";"

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 299
    .local v4, "i":I
    if-lez v4, :cond_4e

    .line 300
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 301
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 306
    :goto_19
    new-instance v3, Lsun/net/ftp/FtpDirEntry;

    invoke-direct {v3, v5}, Lsun/net/ftp/FtpDirEntry;-><init>(Ljava/lang/String;)V

    .line 307
    .local v3, "file":Lsun/net/ftp/FtpDirEntry;
    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5b

    .line 309
    const-string/jumbo v8, ";"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 310
    if-lez v4, :cond_56

    .line 311
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, "s":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 317
    :goto_37
    const-string/jumbo v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 318
    if-lez v4, :cond_1e

    .line 319
    invoke-virtual {v6, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "fact":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v3, v2, v7}, Lsun/net/ftp/FtpDirEntry;->addFact(Ljava/lang/String;Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    goto :goto_1e

    .line 303
    .end local v2    # "fact":Ljava/lang/String;
    .end local v3    # "file":Lsun/net/ftp/FtpDirEntry;
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .local v5, "name":Ljava/lang/String;
    :cond_4e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo p1, ""

    goto :goto_19

    .line 314
    .restart local v3    # "file":Lsun/net/ftp/FtpDirEntry;
    :cond_56
    move-object v6, p1

    .line 315
    .restart local v6    # "s":Ljava/lang/String;
    const-string/jumbo p1, ""

    goto :goto_37

    .line 324
    .end local v6    # "s":Ljava/lang/String;
    :cond_5b
    const-string/jumbo v8, "Size"

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 325
    .restart local v6    # "s":Ljava/lang/String;
    if-eqz v6, :cond_6b

    .line 326
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lsun/net/ftp/FtpDirEntry;->setSize(J)Lsun/net/ftp/FtpDirEntry;

    .line 328
    :cond_6b
    const-string/jumbo v8, "Modify"

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 329
    if-eqz v6, :cond_80

    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "d":Ljava/util/Date;
    :try_start_75
    iget-object v8, p0, Lsun/net/ftp/impl/FtpClient$MLSxParser;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_7a
    .catch Ljava/text/ParseException; {:try_start_75 .. :try_end_7a} :catch_d9

    move-result-object v0

    .line 335
    .end local v0    # "d":Ljava/util/Date;
    :goto_7b
    if-eqz v0, :cond_80

    .line 336
    invoke-virtual {v3, v0}, Lsun/net/ftp/FtpDirEntry;->setLastModified(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;

    .line 339
    :cond_80
    const-string/jumbo v8, "Create"

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 340
    if-eqz v6, :cond_95

    .line 341
    const/4 v0, 0x0

    .line 343
    .restart local v0    # "d":Ljava/util/Date;
    :try_start_8a
    iget-object v8, p0, Lsun/net/ftp/impl/FtpClient$MLSxParser;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_8f
    .catch Ljava/text/ParseException; {:try_start_8a .. :try_end_8f} :catch_d7

    move-result-object v0

    .line 346
    .end local v0    # "d":Ljava/util/Date;
    :goto_90
    if-eqz v0, :cond_95

    .line 347
    invoke-virtual {v3, v0}, Lsun/net/ftp/FtpDirEntry;->setCreated(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;

    .line 350
    :cond_95
    const-string/jumbo v8, "Type"

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 351
    if-eqz v6, :cond_d6

    .line 352
    const-string/jumbo v8, "file"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ac

    .line 353
    sget-object v8, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    .line 355
    :cond_ac
    const-string/jumbo v8, "dir"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ba

    .line 356
    sget-object v8, Lsun/net/ftp/FtpDirEntry$Type;->DIR:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    .line 358
    :cond_ba
    const-string/jumbo v8, "cdir"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c8

    .line 359
    sget-object v8, Lsun/net/ftp/FtpDirEntry$Type;->CDIR:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    .line 361
    :cond_c8
    const-string/jumbo v8, "pdir"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 362
    sget-object v8, Lsun/net/ftp/FtpDirEntry$Type;->PDIR:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    .line 365
    :cond_d6
    return-object v3

    .line 344
    .restart local v0    # "d":Ljava/util/Date;
    :catch_d7
    move-exception v1

    .local v1, "ex":Ljava/text/ParseException;
    goto :goto_90

    .line 333
    .end local v1    # "ex":Ljava/text/ParseException;
    :catch_d9
    move-exception v1

    .restart local v1    # "ex":Ljava/text/ParseException;
    goto :goto_7b
.end method
