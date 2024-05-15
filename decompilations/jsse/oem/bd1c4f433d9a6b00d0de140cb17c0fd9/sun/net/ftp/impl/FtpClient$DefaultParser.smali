.class Lsun/net/ftp/impl/FtpClient$DefaultParser;
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
    name = "DefaultParser"
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/ftp/impl/FtpClient;


# direct methods
.method private constructor <init>(Lsun/net/ftp/impl/FtpClient;)V
    .registers 2
    .param p1, "this$0"    # Lsun/net/ftp/impl/FtpClient;

    .prologue
    .line 187
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$DefaultParser;->this$0:Lsun/net/ftp/impl/FtpClient;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method

.method synthetic constructor <init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient$DefaultParser;)V
    .registers 3
    .param p1, "this$0"    # Lsun/net/ftp/impl/FtpClient;
    .param p2, "-this1"    # Lsun/net/ftp/impl/FtpClient$DefaultParser;

    .prologue
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient$DefaultParser;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    return-void
.end method


# virtual methods
.method public parseLine(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .registers 26
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v6, 0x0

    .line 209
    .local v6, "fdate":Ljava/lang/String;
    const/4 v9, 0x0

    .line 210
    .local v9, "fsize":Ljava/lang/String;
    const/16 v18, 0x0

    .line 211
    .local v18, "time":Ljava/lang/String;
    const/4 v8, 0x0

    .line 212
    .local v8, "filename":Ljava/lang/String;
    const/16 v17, 0x0

    .line 213
    .local v17, "permstring":Ljava/lang/String;
    const/16 v19, 0x0

    .line 214
    .local v19, "username":Ljava/lang/String;
    const/4 v10, 0x0

    .line 215
    .local v10, "groupname":Ljava/lang/String;
    const/4 v4, 0x0

    .line 216
    .local v4, "dir":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 217
    .local v15, "now":Ljava/util/Calendar;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 219
    .local v20, "year":I
    const/4 v13, 0x0

    .line 220
    .local v13, "m":Ljava/util/regex/Matcher;
    const/4 v12, 0x0

    .end local v4    # "dir":Z
    .end local v6    # "fdate":Ljava/lang/String;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v9    # "fsize":Ljava/lang/String;
    .end local v10    # "groupname":Ljava/lang/String;
    .end local v13    # "m":Ljava/util/regex/Matcher;
    .end local v17    # "permstring":Ljava/lang/String;
    .end local v18    # "time":Ljava/lang/String;
    .end local v19    # "username":Ljava/lang/String;
    .local v12, "j":I
    :goto_19
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get3()[Ljava/util/regex/Pattern;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_158

    .line 221
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get3()[Ljava/util/regex/Pattern;

    move-result-object v21

    aget-object v21, v21, v12

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 222
    .local v13, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_128

    .line 225
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x0

    aget v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, "filename":Ljava/lang/String;
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x1

    aget v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 227
    .local v9, "fsize":Ljava/lang/String;
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x2

    aget v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "fdate":Ljava/lang/String;
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x4

    aget v21, v21, v22

    if-lez v21, :cond_12c

    .line 229
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v22

    aget-object v22, v22, v12

    const/16 v23, 0x4

    aget v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 233
    :cond_a0
    :goto_a0
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x3

    aget v21, v21, v22

    if-lez v21, :cond_bc

    .line 234
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x3

    aget v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    .line 236
    :cond_bc
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x5

    aget v21, v21, v22

    if-lez v21, :cond_e3

    .line 237
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x5

    aget v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 238
    .local v17, "permstring":Ljava/lang/String;
    const-string/jumbo v21, "d"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 240
    .end local v17    # "permstring":Ljava/lang/String;
    :cond_e3
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x6

    aget v21, v21, v22

    if-lez v21, :cond_ff

    .line 241
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x6

    aget v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    .line 243
    :cond_ff
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x7

    aget v21, v21, v22

    if-lez v21, :cond_11b

    .line 244
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x7

    aget v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 247
    :cond_11b
    const-string/jumbo v21, "<DIR>"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_128

    .line 248
    const/4 v4, 0x1

    .line 249
    .restart local v4    # "dir":Z
    const/4 v9, 0x0

    .line 220
    .end local v4    # "dir":Z
    .end local v6    # "fdate":Ljava/lang/String;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v9    # "fsize":Ljava/lang/String;
    :cond_128
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_19

    .line 230
    .restart local v6    # "fdate":Ljava/lang/String;
    .restart local v8    # "filename":Ljava/lang/String;
    .restart local v9    # "fsize":Ljava/lang/String;
    :cond_12c
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x3

    aget v21, v21, v22

    if-lez v21, :cond_a0

    .line 231
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_a0

    .line 254
    .end local v6    # "fdate":Ljava/lang/String;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v9    # "fsize":Ljava/lang/String;
    .end local v13    # "m":Ljava/util/regex/Matcher;
    :cond_158
    if-eqz v8, :cond_251

    .line 257
    :try_start_15a
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/ftp/impl/FtpClient$DefaultParser;->this$0:Lsun/net/ftp/impl/FtpClient;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lsun/net/ftp/impl/FtpClient;->-get0(Lsun/net/ftp/impl/FtpClient;)Ljava/text/DateFormat;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_169} :catch_201

    move-result-object v3

    .line 261
    :goto_16a
    if-eqz v3, :cond_1ae

    if-eqz v18, :cond_1ae

    .line 262
    const-string/jumbo v21, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 263
    .local v2, "c":I
    invoke-virtual {v15, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 264
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0xa

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 265
    add-int/lit8 v21, v2, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0xc

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 266
    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 270
    .end local v2    # "c":I
    :cond_1ae
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get1()Ljava/util/regex/Pattern;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 271
    .local v14, "m2":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_1c6

    .line 273
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 275
    :cond_1c6
    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v22, 0x3

    const/16 v23, 0x3

    filled-new-array/range {v22 .. v23}, [I

    move-result-object v22

    invoke-static/range {v21 .. v22}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[Z

    .line 276
    .local v16, "perms":[[Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1d7
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ge v11, v0, :cond_20b

    .line 277
    const/4 v12, 0x0

    :goto_1de
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ge v12, v0, :cond_208

    .line 278
    aget-object v22, v16, v11

    mul-int/lit8 v21, v11, 0x3

    add-int v21, v21, v12

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v23, 0x2d

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_205

    const/16 v21, 0x1

    :goto_1fc
    aput-boolean v21, v22, v12

    .line 277
    add-int/lit8 v12, v12, 0x1

    goto :goto_1de

    .line 258
    .end local v11    # "i":I
    .end local v14    # "m2":Ljava/util/regex/Matcher;
    .end local v16    # "perms":[[Z
    :catch_201
    move-exception v5

    .line 259
    .local v5, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .local v3, "d":Ljava/util/Date;
    goto/16 :goto_16a

    .line 278
    .end local v3    # "d":Ljava/util/Date;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v11    # "i":I
    .restart local v14    # "m2":Ljava/util/regex/Matcher;
    .restart local v16    # "perms":[[Z
    :cond_205
    const/16 v21, 0x0

    goto :goto_1fc

    .line 276
    :cond_208
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d7

    .line 281
    :cond_20b
    new-instance v7, Lsun/net/ftp/FtpDirEntry;

    invoke-direct {v7, v8}, Lsun/net/ftp/FtpDirEntry;-><init>(Ljava/lang/String;)V

    .line 282
    .local v7, "file":Lsun/net/ftp/FtpDirEntry;
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lsun/net/ftp/FtpDirEntry;->setUser(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lsun/net/ftp/FtpDirEntry;->setGroup(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    .line 283
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Lsun/net/ftp/FtpDirEntry;->setSize(J)Lsun/net/ftp/FtpDirEntry;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lsun/net/ftp/FtpDirEntry;->setLastModified(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;

    .line 284
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lsun/net/ftp/FtpDirEntry;->setPermissions([[Z)Lsun/net/ftp/FtpDirEntry;

    .line 285
    if-eqz v4, :cond_239

    sget-object v21, Lsun/net/ftp/FtpDirEntry$Type;->DIR:Lsun/net/ftp/FtpDirEntry$Type;

    :goto_233
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    .line 286
    return-object v7

    .line 285
    :cond_239
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x6c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_24e

    sget-object v21, Lsun/net/ftp/FtpDirEntry$Type;->LINK:Lsun/net/ftp/FtpDirEntry$Type;

    goto :goto_233

    :cond_24e
    sget-object v21, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    goto :goto_233

    .line 288
    .end local v7    # "file":Lsun/net/ftp/FtpDirEntry;
    .end local v11    # "i":I
    .end local v14    # "m2":Ljava/util/regex/Matcher;
    .end local v16    # "perms":[[Z
    :cond_251
    const/16 v21, 0x0

    return-object v21
.end method
