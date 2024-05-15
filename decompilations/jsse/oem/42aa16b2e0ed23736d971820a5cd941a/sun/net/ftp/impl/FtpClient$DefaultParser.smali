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
.field final synthetic blacklist this$0:Lsun/net/ftp/impl/FtpClient;


# direct methods
.method private constructor blacklist <init>(Lsun/net/ftp/impl/FtpClient;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$DefaultParser;->this$0:Lsun/net/ftp/impl/FtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method

.method synthetic constructor blacklist <init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient$1;)V
    .registers 3
    .param p1, "x0"    # Lsun/net/ftp/impl/FtpClient;
    .param p2, "x1"    # Lsun/net/ftp/impl/FtpClient$1;

    .line 185
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient$DefaultParser;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    return-void
.end method


# virtual methods
.method public blacklist parseLine(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .registers 24
    .param p1, "line"    # Ljava/lang/String;

    .line 208
    move-object/from16 v1, p1

    const/4 v0, 0x0

    .line 209
    .local v0, "fdate":Ljava/lang/String;
    const/4 v2, 0x0

    .line 210
    .local v2, "fsize":Ljava/lang/String;
    const/4 v3, 0x0

    .line 211
    .local v3, "time":Ljava/lang/String;
    const/4 v4, 0x0

    .line 212
    .local v4, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 213
    .local v5, "permstring":Ljava/lang/String;
    const/4 v6, 0x0

    .line 214
    .local v6, "username":Ljava/lang/String;
    const/4 v7, 0x0

    .line 215
    .local v7, "groupname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 216
    .local v8, "dir":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 217
    .local v9, "now":Ljava/util/Calendar;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 219
    .local v11, "year":I
    const/4 v12, 0x0

    .line 220
    .local v12, "m":Ljava/util/regex/Matcher;
    const/4 v13, 0x0

    move-object/from16 v21, v2

    move-object v2, v0

    move v0, v13

    move-object v13, v12

    move v12, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, v21

    .local v0, "j":I
    .local v2, "fdate":Ljava/lang/String;
    .local v3, "fsize":Ljava/lang/String;
    .local v4, "time":Ljava/lang/String;
    .local v5, "filename":Ljava/lang/String;
    .local v6, "permstring":Ljava/lang/String;
    .local v7, "username":Ljava/lang/String;
    .local v8, "groupname":Ljava/lang/String;
    .local v12, "dir":Z
    .local v13, "m":Ljava/util/regex/Matcher;
    :goto_22
    # getter for: Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$000()[Ljava/util/regex/Pattern;

    move-result-object v14

    array-length v14, v14

    const/4 v15, 0x0

    if-ge v0, v14, :cond_11f

    .line 221
    # getter for: Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$000()[Ljava/util/regex/Pattern;

    move-result-object v14

    aget-object v14, v14, v0

    invoke-virtual {v14, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 222
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_11a

    .line 225
    # getter for: Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$100()[[I

    move-result-object v14

    aget-object v14, v14, v0

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 226
    # getter for: Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$100()[[I

    move-result-object v14

    aget-object v14, v14, v0

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    # getter for: Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$100()[[I

    move-result-object v14

    aget-object v14, v14, v0

    const/4 v15, 0x2

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    # getter for: Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$100()[[I

    move-result-object v14

    aget-object v14, v14, v0

    const/4 v15, 0x4

    aget v14, v14, v15

    const-string v10, ", "

    if-lez v14, :cond_8c

    .line 229
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$100()[[I

    move-result-object v10

    aget-object v10, v10, v0

    aget v10, v10, v15

    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_ad

    .line 230
    :cond_8c
    # getter for: Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$100()[[I

    move-result-object v14

    aget-object v14, v14, v0

    const/4 v15, 0x3

    aget v14, v14, v15

    if-lez v14, :cond_ad

    .line 231
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    :cond_ad
    :goto_ad
    # getter for: Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$100()[[I

    move-result-object v10

    aget-object v10, v10, v0

    const/4 v14, 0x3

    aget v10, v10, v14

    if-lez v10, :cond_c4

    .line 234
    # getter for: Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$100()[[I

    move-result-object v10

    aget-object v10, v10, v0

    aget v10, v10, v14

    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 236
    :cond_c4
    # getter for: Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$100()[[I

    move-result-object v10

    aget-object v10, v10, v0

    const/4 v14, 0x5

    aget v10, v10, v14

    if-lez v10, :cond_e1

    .line 237
    # getter for: Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$100()[[I

    move-result-object v10

    aget-object v10, v10, v0

    aget v10, v10, v14

    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 238
    const-string v10, "d"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    .line 240
    :cond_e1
    # getter for: Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$100()[[I

    move-result-object v10

    aget-object v10, v10, v0

    const/4 v14, 0x6

    aget v10, v10, v14

    if-lez v10, :cond_f8

    .line 241
    # getter for: Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$100()[[I

    move-result-object v10

    aget-object v10, v10, v0

    aget v10, v10, v14

    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 243
    :cond_f8
    # getter for: Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$100()[[I

    move-result-object v10

    aget-object v10, v10, v0

    const/4 v14, 0x7

    aget v10, v10, v14

    if-lez v10, :cond_10f

    .line 244
    # getter for: Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$100()[[I

    move-result-object v10

    aget-object v10, v10, v0

    aget v10, v10, v14

    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 247
    :cond_10f
    const-string v10, "<DIR>"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11a

    .line 248
    const/4 v10, 0x1

    .line 249
    .end local v12    # "dir":Z
    .local v10, "dir":Z
    const/4 v3, 0x0

    move v12, v10

    .line 220
    .end local v10    # "dir":Z
    .restart local v12    # "dir":Z
    :cond_11a
    add-int/lit8 v0, v0, 0x1

    const/4 v10, 0x1

    goto/16 :goto_22

    .line 254
    .end local v0    # "j":I
    :cond_11f
    if-eqz v5, :cond_1f2

    .line 257
    move-object/from16 v10, p0

    :try_start_123
    iget-object v0, v10, Lsun/net/ftp/impl/FtpClient$DefaultParser;->this$0:Lsun/net/ftp/impl/FtpClient;

    # getter for: Lsun/net/ftp/impl/FtpClient;->df:Ljava/text/DateFormat;
    invoke-static {v0}, Lsun/net/ftp/impl/FtpClient;->access$200(Lsun/net/ftp/impl/FtpClient;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_12d} :catch_12e

    .line 260
    .local v0, "d":Ljava/util/Date;
    goto :goto_131

    .line 258
    .end local v0    # "d":Ljava/util/Date;
    :catch_12e
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    const/4 v14, 0x0

    move-object v0, v14

    .line 261
    .local v0, "d":Ljava/util/Date;
    :goto_131
    if-eqz v0, :cond_161

    if-eqz v4, :cond_161

    .line 262
    const-string v14, ":"

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 263
    .local v14, "c":I
    invoke-virtual {v9, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 264
    move-object/from16 v18, v0

    .end local v0    # "d":Ljava/util/Date;
    .local v18, "d":Ljava/util/Date;
    const/16 v0, 0xa

    invoke-virtual {v4, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v0, v15}, Ljava/util/Calendar;->set(II)V

    .line 265
    const/16 v0, 0xc

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v0, v15}, Ljava/util/Calendar;->set(II)V

    .line 266
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .end local v18    # "d":Ljava/util/Date;
    .restart local v0    # "d":Ljava/util/Date;
    goto :goto_165

    .line 261
    .end local v14    # "c":I
    :cond_161
    move-object/from16 v18, v0

    .line 270
    .end local v0    # "d":Ljava/util/Date;
    .restart local v18    # "d":Ljava/util/Date;
    move-object/from16 v0, v18

    .end local v18    # "d":Ljava/util/Date;
    .restart local v0    # "d":Ljava/util/Date;
    :goto_165
    # getter for: Lsun/net/ftp/impl/FtpClient;->linkp:Ljava/util/regex/Pattern;
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->access$300()Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 271
    .local v14, "m2":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_179

    .line 273
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_17a

    .line 271
    :cond_179
    const/4 v15, 0x1

    .line 275
    :goto_17a
    const/4 v15, 0x2

    new-array v15, v15, [I

    fill-array-data v15, :array_1f4

    move-object/from16 v16, v2

    .end local v2    # "fdate":Ljava/lang/String;
    .local v16, "fdate":Ljava/lang/String;
    const-class v2, Z

    invoke-static {v2, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    .line 276
    .local v2, "perms":[[Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_18b
    move-object/from16 v18, v4

    const/4 v4, 0x3

    .end local v4    # "time":Ljava/lang/String;
    .local v18, "time":Ljava/lang/String;
    if-ge v15, v4, :cond_1bc

    .line 277
    const/16 v17, 0x0

    move-object/from16 v19, v9

    move/from16 v9, v17

    .local v9, "j":I
    .local v19, "now":Ljava/util/Calendar;
    :goto_196
    if-ge v9, v4, :cond_1b3

    .line 278
    aget-object v17, v2, v15

    mul-int/lit8 v20, v15, 0x3

    add-int v4, v20, v9

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v20, v6

    .end local v6    # "permstring":Ljava/lang/String;
    .local v20, "permstring":Ljava/lang/String;
    const/16 v6, 0x2d

    if-eq v4, v6, :cond_1aa

    const/4 v4, 0x1

    goto :goto_1ab

    :cond_1aa
    const/4 v4, 0x0

    :goto_1ab
    aput-boolean v4, v17, v9

    .line 277
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v20

    const/4 v4, 0x3

    goto :goto_196

    .end local v20    # "permstring":Ljava/lang/String;
    .restart local v6    # "permstring":Ljava/lang/String;
    :cond_1b3
    move-object/from16 v20, v6

    .line 276
    .end local v6    # "permstring":Ljava/lang/String;
    .end local v9    # "j":I
    .restart local v20    # "permstring":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v18

    move-object/from16 v9, v19

    goto :goto_18b

    .end local v19    # "now":Ljava/util/Calendar;
    .end local v20    # "permstring":Ljava/lang/String;
    .restart local v6    # "permstring":Ljava/lang/String;
    .local v9, "now":Ljava/util/Calendar;
    :cond_1bc
    move-object/from16 v20, v6

    move-object/from16 v19, v9

    .line 281
    .end local v6    # "permstring":Ljava/lang/String;
    .end local v9    # "now":Ljava/util/Calendar;
    .end local v15    # "i":I
    .restart local v19    # "now":Ljava/util/Calendar;
    .restart local v20    # "permstring":Ljava/lang/String;
    new-instance v4, Lsun/net/ftp/FtpDirEntry;

    invoke-direct {v4, v5}, Lsun/net/ftp/FtpDirEntry;-><init>(Ljava/lang/String;)V

    .line 282
    .local v4, "file":Lsun/net/ftp/FtpDirEntry;
    invoke-virtual {v4, v7}, Lsun/net/ftp/FtpDirEntry;->setUser(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    move-result-object v6

    invoke-virtual {v6, v8}, Lsun/net/ftp/FtpDirEntry;->setGroup(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    .line 283
    move-object v9, v5

    .end local v5    # "filename":Ljava/lang/String;
    .local v9, "filename":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lsun/net/ftp/FtpDirEntry;->setSize(J)Lsun/net/ftp/FtpDirEntry;

    move-result-object v5

    invoke-virtual {v5, v0}, Lsun/net/ftp/FtpDirEntry;->setLastModified(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;

    .line 284
    invoke-virtual {v4, v2}, Lsun/net/ftp/FtpDirEntry;->setPermissions([[Z)Lsun/net/ftp/FtpDirEntry;

    .line 285
    if-eqz v12, :cond_1e0

    sget-object v5, Lsun/net/ftp/FtpDirEntry$Type;->DIR:Lsun/net/ftp/FtpDirEntry$Type;

    goto :goto_1ee

    :cond_1e0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x6c

    if-ne v5, v6, :cond_1ec

    sget-object v5, Lsun/net/ftp/FtpDirEntry$Type;->LINK:Lsun/net/ftp/FtpDirEntry$Type;

    goto :goto_1ee

    :cond_1ec
    sget-object v5, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    :goto_1ee
    invoke-virtual {v4, v5}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    .line 286
    return-object v4

    .line 288
    .end local v0    # "d":Ljava/util/Date;
    .end local v14    # "m2":Ljava/util/regex/Matcher;
    .end local v16    # "fdate":Ljava/lang/String;
    .end local v18    # "time":Ljava/lang/String;
    .end local v19    # "now":Ljava/util/Calendar;
    .end local v20    # "permstring":Ljava/lang/String;
    .local v2, "fdate":Ljava/lang/String;
    .local v4, "time":Ljava/lang/String;
    .restart local v5    # "filename":Ljava/lang/String;
    .restart local v6    # "permstring":Ljava/lang/String;
    .local v9, "now":Ljava/util/Calendar;
    :cond_1f2
    const/4 v0, 0x0

    return-object v0

    :array_1f4
    .array-data 4
        0x3
        0x3
    .end array-data
.end method
