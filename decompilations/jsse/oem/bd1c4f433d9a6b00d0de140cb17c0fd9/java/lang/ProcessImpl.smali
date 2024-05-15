.class final Ljava/lang/ProcessImpl;
.super Ljava/lang/Object;
.source "ProcessImpl.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/lang/ProcessImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/lang/ProcessImpl;->-assertionsDisabled:Z

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static start([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Ljava/lang/ProcessBuilder$Redirect;Z)Ljava/lang/Process;
    .registers 26
    .param p0, "cmdarray"    # [Ljava/lang/String;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "redirects"    # [Ljava/lang/ProcessBuilder$Redirect;
    .param p4, "redirectErrorStream"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/ProcessBuilder$Redirect;",
            "Z)",
            "Ljava/lang/Process;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "environment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Ljava/lang/ProcessImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_11

    if-eqz p0, :cond_b

    move-object/from16 v0, p0

    array-length v1, v0

    if-gtz v1, :cond_11

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 69
    :cond_11
    move-object/from16 v0, p0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v11, v1, [[B

    .line 70
    .local v11, "args":[[B
    array-length v0, v11

    move/from16 v20, v0

    .line 71
    .local v20, "size":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1d
    array-length v1, v11

    move/from16 v0, v19

    if-ge v0, v1, :cond_34

    .line 72
    add-int/lit8 v1, v19, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    aput-object v1, v11, v19

    .line 73
    aget-object v1, v11, v19

    array-length v1, v1

    add-int v20, v20, v1

    .line 71
    add-int/lit8 v19, v19, 0x1

    goto :goto_1d

    .line 75
    :cond_34
    move/from16 v0, v20

    new-array v3, v0, [B

    .line 76
    .local v3, "argBlock":[B
    const/16 v19, 0x0

    .line 77
    const/4 v1, 0x0

    array-length v2, v11

    :goto_3c
    if-ge v1, v2, :cond_4f

    aget-object v10, v11, v1

    .line 78
    .local v10, "arg":[B
    array-length v4, v10

    const/4 v6, 0x0

    move/from16 v0, v19

    invoke-static {v10, v6, v3, v0, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 79
    array-length v4, v10

    add-int/lit8 v4, v4, 0x1

    add-int v19, v19, v4

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 83
    .end local v10    # "arg":[B
    :cond_4f
    const/4 v1, 0x1

    new-array v12, v1, [I

    .line 84
    .local v12, "envc":[I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Ljava/lang/ProcessEnvironment;->toEnvironmentBlock(Ljava/util/Map;[I)[B

    move-result-object v5

    .line 88
    .local v5, "envBlock":[B
    const/4 v13, 0x0

    .line 89
    .local v13, "f0":Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 90
    .local v15, "f1":Ljava/io/FileOutputStream;
    const/16 v17, 0x0

    .line 93
    .local v17, "f2":Ljava/io/FileOutputStream;
    if-nez p3, :cond_8b

    .line 94
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v4, -0x1

    :try_start_61
    filled-new-array {v1, v2, v4}, [I

    move-result-object v8

    .line 128
    .end local v13    # "f0":Ljava/io/FileInputStream;
    .end local v15    # "f1":Ljava/io/FileOutputStream;
    .end local v17    # "f2":Ljava/io/FileOutputStream;
    .local v8, "std_fds":[I
    :goto_65
    new-instance v1, Ljava/lang/UNIXProcess;

    .line 129
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/ProcessImpl;->toCString(Ljava/lang/String;)[B

    move-result-object v2

    .line 130
    array-length v4, v11

    .line 131
    const/4 v6, 0x0

    aget v6, v12, v6

    .line 132
    invoke-static/range {p2 .. p2}, Ljava/lang/ProcessImpl;->toCString(Ljava/lang/String;)[B

    move-result-object v7

    move/from16 v9, p4

    .line 128
    invoke-direct/range {v1 .. v9}, Ljava/lang/UNIXProcess;-><init>([B[BI[BI[B[IZ)V
    :try_end_7b
    .catchall {:try_start_61 .. :try_end_7b} :catchall_b0

    .line 138
    if-eqz v13, :cond_80

    :try_start_7d
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_14d

    .line 140
    :cond_80
    if-eqz v15, :cond_85

    :try_start_82
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_146

    .line 141
    :cond_85
    if-eqz v17, :cond_8a

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 128
    :cond_8a
    return-object v1

    .line 96
    .end local v8    # "std_fds":[I
    .restart local v13    # "f0":Ljava/io/FileInputStream;
    .restart local v15    # "f1":Ljava/io/FileOutputStream;
    .restart local v17    # "f2":Ljava/io/FileOutputStream;
    :cond_8b
    const/4 v1, 0x3

    :try_start_8c
    new-array v8, v1, [I

    .line 98
    .restart local v8    # "std_fds":[I
    const/4 v1, 0x0

    aget-object v1, p3, v1

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v1, v2, :cond_c1

    .line 99
    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v8, v2

    .line 107
    .end local v13    # "f0":Ljava/io/FileInputStream;
    :goto_99
    const/4 v1, 0x1

    aget-object v1, p3, v1

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v1, v2, :cond_e6

    .line 108
    const/4 v1, -0x1

    const/4 v2, 0x1

    aput v1, v8, v2

    .line 117
    .end local v15    # "f1":Ljava/io/FileOutputStream;
    :goto_a4
    const/4 v1, 0x2

    aget-object v1, p3, v1

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v1, v2, :cond_115

    .line 118
    const/4 v1, -0x1

    const/4 v2, 0x2

    aput v1, v8, v2
    :try_end_af
    .catchall {:try_start_8c .. :try_end_af} :catchall_b0

    goto :goto_65

    .line 135
    .end local v8    # "std_fds":[I
    .end local v17    # "f2":Ljava/io/FileOutputStream;
    :catchall_b0
    move-exception v1

    .line 138
    :goto_b1
    if-eqz v13, :cond_b6

    :try_start_b3
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_167

    .line 140
    :cond_b6
    if-eqz v15, :cond_bb

    :try_start_b8
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_160

    .line 141
    :cond_bb
    if-eqz v17, :cond_c0

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 135
    :cond_c0
    throw v1

    .line 100
    .restart local v8    # "std_fds":[I
    .restart local v13    # "f0":Ljava/io/FileInputStream;
    .restart local v15    # "f1":Ljava/io/FileOutputStream;
    .restart local v17    # "f2":Ljava/io/FileOutputStream;
    :cond_c1
    const/4 v1, 0x0

    :try_start_c2
    aget-object v1, p3, v1

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v1, v2, :cond_cd

    .line 101
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v8, v2

    goto :goto_99

    .line 103
    :cond_cd
    new-instance v14, Ljava/io/FileInputStream;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d9
    .catchall {:try_start_c2 .. :try_end_d9} :catchall_b0

    .line 104
    .local v14, "f0":Ljava/io/FileInputStream;
    :try_start_d9
    invoke-virtual {v14}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .end local v13    # "f0":Ljava/io/FileInputStream;
    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v8, v2
    :try_end_e4
    .catchall {:try_start_d9 .. :try_end_e4} :catchall_17a

    move-object v13, v14

    .end local v14    # "f0":Ljava/io/FileInputStream;
    .local v13, "f0":Ljava/io/FileInputStream;
    goto :goto_99

    .line 109
    .end local v13    # "f0":Ljava/io/FileInputStream;
    :cond_e6
    const/4 v1, 0x1

    :try_start_e7
    aget-object v1, p3, v1

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v1, v2, :cond_f2

    .line 110
    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v1, v8, v2

    goto :goto_a4

    .line 112
    :cond_f2
    new-instance v16, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v1

    .line 113
    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder$Redirect;->append()Z

    move-result v2

    .line 112
    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_107
    .catchall {:try_start_e7 .. :try_end_107} :catchall_b0

    .line 114
    .local v16, "f1":Ljava/io/FileOutputStream;
    :try_start_107
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .end local v15    # "f1":Ljava/io/FileOutputStream;
    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v8, v2
    :try_end_112
    .catchall {:try_start_107 .. :try_end_112} :catchall_17e

    move-object/from16 v15, v16

    .end local v16    # "f1":Ljava/io/FileOutputStream;
    .local v15, "f1":Ljava/io/FileOutputStream;
    goto :goto_a4

    .line 119
    .end local v15    # "f1":Ljava/io/FileOutputStream;
    :cond_115
    const/4 v1, 0x2

    :try_start_116
    aget-object v1, p3, v1

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v1, v2, :cond_122

    .line 120
    const/4 v1, 0x2

    const/4 v2, 0x2

    aput v1, v8, v2

    goto/16 :goto_65

    .line 122
    :cond_122
    new-instance v18, Ljava/io/FileOutputStream;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v1

    .line 123
    const/4 v2, 0x2

    aget-object v2, p3, v2

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder$Redirect;->append()Z

    move-result v2

    .line 122
    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_137
    .catchall {:try_start_116 .. :try_end_137} :catchall_b0

    .line 124
    .local v18, "f2":Ljava/io/FileOutputStream;
    :try_start_137
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .end local v17    # "f2":Ljava/io/FileOutputStream;
    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v8, v2
    :try_end_142
    .catchall {:try_start_137 .. :try_end_142} :catchall_183

    move-object/from16 v17, v18

    .end local v18    # "f2":Ljava/io/FileOutputStream;
    .local v17, "f2":Ljava/io/FileOutputStream;
    goto/16 :goto_65

    .line 141
    .end local v17    # "f2":Ljava/io/FileOutputStream;
    :catchall_146
    move-exception v1

    if-eqz v17, :cond_14c

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_14c
    throw v1

    .line 139
    :catchall_14d
    move-exception v1

    .line 140
    if-eqz v15, :cond_153

    :try_start_150
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_159

    .line 141
    :cond_153
    if-eqz v17, :cond_158

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 139
    :cond_158
    throw v1

    .line 141
    :catchall_159
    move-exception v1

    if-eqz v17, :cond_15f

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_15f
    throw v1

    .end local v8    # "std_fds":[I
    :catchall_160
    move-exception v1

    if-eqz v17, :cond_166

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_166
    throw v1

    .line 139
    :catchall_167
    move-exception v1

    .line 140
    if-eqz v15, :cond_16d

    :try_start_16a
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_16d
    .catchall {:try_start_16a .. :try_end_16d} :catchall_173

    .line 141
    :cond_16d
    if-eqz v17, :cond_172

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 139
    :cond_172
    throw v1

    .line 141
    :catchall_173
    move-exception v1

    if-eqz v17, :cond_179

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_179
    throw v1

    .line 135
    .restart local v8    # "std_fds":[I
    .restart local v14    # "f0":Ljava/io/FileInputStream;
    .local v15, "f1":Ljava/io/FileOutputStream;
    .local v17, "f2":Ljava/io/FileOutputStream;
    :catchall_17a
    move-exception v1

    move-object v13, v14

    .end local v14    # "f0":Ljava/io/FileInputStream;
    .restart local v13    # "f0":Ljava/io/FileInputStream;
    goto/16 :goto_b1

    .end local v13    # "f0":Ljava/io/FileInputStream;
    .end local v15    # "f1":Ljava/io/FileOutputStream;
    .restart local v16    # "f1":Ljava/io/FileOutputStream;
    :catchall_17e
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "f1":Ljava/io/FileOutputStream;
    .local v15, "f1":Ljava/io/FileOutputStream;
    goto/16 :goto_b1

    .end local v15    # "f1":Ljava/io/FileOutputStream;
    .end local v17    # "f2":Ljava/io/FileOutputStream;
    .restart local v18    # "f2":Ljava/io/FileOutputStream;
    :catchall_183
    move-exception v1

    move-object/from16 v17, v18

    .end local v18    # "f2":Ljava/io/FileOutputStream;
    .local v17, "f2":Ljava/io/FileOutputStream;
    goto/16 :goto_b1
.end method

.method private static toCString(Ljava/lang/String;)[B
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 46
    if-nez p0, :cond_5

    .line 47
    return-object v2

    .line 48
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 49
    .local v0, "bytes":[B
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [B

    .line 52
    .local v1, "result":[B
    array-length v2, v0

    .line 50
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 53
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-byte v3, v1, v2

    .line 54
    return-object v1
.end method
