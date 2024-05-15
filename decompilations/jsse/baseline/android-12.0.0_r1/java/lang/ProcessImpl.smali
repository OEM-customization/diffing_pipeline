.class final Ljava/lang/ProcessImpl;
.super Ljava/lang/Object;
.source "ProcessImpl.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 41
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist start([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Ljava/lang/ProcessBuilder$Redirect;Z)Ljava/lang/Process;
    .registers 27
    .param p0, "cmdarray"    # [Ljava/lang/String;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "redirects"    # [Ljava/lang/ProcessBuilder$Redirect;
    .param p4, "redirectErrorStream"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
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

    .line 68
    .local p1, "environment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    .line 72
    array-length v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    new-array v3, v0, [[B

    .line 73
    .local v3, "args":[[B
    array-length v0, v3

    .line 74
    .local v0, "size":I
    const/4 v4, 0x0

    move/from16 v21, v4

    move v4, v0

    move/from16 v0, v21

    .local v0, "i":I
    .local v4, "size":I
    :goto_e
    array-length v5, v3

    if-ge v0, v5, :cond_22

    .line 75
    add-int/lit8 v5, v0, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v3, v0

    .line 76
    aget-object v5, v3, v0

    array-length v5, v5

    add-int/2addr v4, v5

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 78
    .end local v0    # "i":I
    :cond_22
    new-array v14, v4, [B

    .line 79
    .local v14, "argBlock":[B
    const/4 v0, 0x0

    .line 80
    .restart local v0    # "i":I
    array-length v5, v3

    const/4 v6, 0x0

    move v15, v0

    move v0, v6

    .end local v0    # "i":I
    .local v15, "i":I
    :goto_29
    if-ge v0, v5, :cond_37

    aget-object v7, v3, v0

    .line 81
    .local v7, "arg":[B
    array-length v8, v7

    invoke-static {v7, v6, v14, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    array-length v8, v7

    add-int/2addr v8, v2

    add-int/2addr v15, v8

    .line 80
    .end local v7    # "arg":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 86
    :cond_37
    new-array v13, v2, [I

    .line 87
    .local v13, "envc":[I
    move-object/from16 v12, p1

    invoke-static {v12, v13}, Ljava/lang/ProcessEnvironment;->toEnvironmentBlock(Ljava/util/Map;[I)[B

    move-result-object v16

    .line 91
    .local v16, "envBlock":[B
    const/4 v5, 0x0

    .line 92
    .local v5, "f0":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 93
    .local v7, "f1":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 96
    .local v8, "f2":Ljava/io/FileOutputStream;
    const/4 v0, 0x3

    const/4 v9, -0x1

    const/4 v10, 0x2

    if-nez p3, :cond_5d

    .line 97
    :try_start_47
    new-array v0, v0, [I

    aput v9, v0, v6

    aput v9, v0, v2

    aput v9, v0, v10
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_58

    move-object v2, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    .local v0, "std_fds":[I
    goto/16 :goto_f3

    .line 147
    .end local v0    # "std_fds":[I
    :catchall_58
    move-exception v0

    move-object/from16 v19, v13

    goto/16 :goto_155

    .line 99
    :cond_5d
    :try_start_5d
    new-array v0, v0, [I

    .line 101
    .restart local v0    # "std_fds":[I
    aget-object v11, p3, v6

    sget-object v10, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_152

    if-ne v11, v10, :cond_68

    .line 102
    :try_start_65
    aput v9, v0, v6
    :try_end_67
    .catchall {:try_start_65 .. :try_end_67} :catchall_58

    goto :goto_87

    .line 103
    :cond_68
    :try_start_68
    aget-object v10, p3, v6

    sget-object v11, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_152

    if-ne v10, v11, :cond_71

    .line 104
    :try_start_6e
    aput v6, v0, v6
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_58

    goto :goto_87

    .line 106
    :cond_71
    :try_start_71
    new-instance v10, Ljava/io/FileInputStream;

    aget-object v11, p3, v6

    invoke-virtual {v11}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v10

    .line 109
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v10

    aput v10, v0, v6

    .line 112
    :goto_87
    aget-object v10, p3, v2

    sget-object v11, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;
    :try_end_8b
    .catchall {:try_start_71 .. :try_end_8b} :catchall_152

    if-ne v10, v11, :cond_90

    .line 113
    :try_start_8d
    aput v9, v0, v2
    :try_end_8f
    .catchall {:try_start_8d .. :try_end_8f} :catchall_58

    goto :goto_b5

    .line 114
    :cond_90
    :try_start_90
    aget-object v10, p3, v2

    sget-object v11, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_152

    if-ne v10, v11, :cond_99

    .line 115
    :try_start_96
    aput v2, v0, v2
    :try_end_98
    .catchall {:try_start_96 .. :try_end_98} :catchall_58

    goto :goto_b5

    .line 117
    :cond_99
    :try_start_99
    new-instance v10, Ljava/io/FileOutputStream;

    aget-object v11, p3, v2

    invoke-virtual {v11}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v11

    aget-object v18, p3, v2

    .line 118
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ProcessBuilder$Redirect;->append()Z

    move-result v6

    invoke-direct {v10, v11, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v7, v10

    .line 121
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v6

    aput v6, v0, v2

    .line 124
    :goto_b5
    const/4 v2, 0x2

    aget-object v6, p3, v2

    sget-object v10, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;
    :try_end_ba
    .catchall {:try_start_99 .. :try_end_ba} :catchall_152

    if-ne v6, v10, :cond_bf

    .line 125
    :try_start_bc
    aput v9, v0, v2
    :try_end_be
    .catchall {:try_start_bc .. :try_end_be} :catchall_58

    goto :goto_c7

    .line 126
    :cond_bf
    :try_start_bf
    aget-object v6, p3, v2

    sget-object v9, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;
    :try_end_c3
    .catchall {:try_start_bf .. :try_end_c3} :catchall_152

    if-ne v6, v9, :cond_cf

    .line 127
    :try_start_c5
    aput v2, v0, v2
    :try_end_c7
    .catchall {:try_start_c5 .. :try_end_c7} :catchall_58

    .line 137
    :goto_c7
    move-object v2, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    goto :goto_f3

    .line 129
    :cond_cf
    :try_start_cf
    new-instance v6, Ljava/io/FileOutputStream;

    aget-object v9, p3, v2

    invoke-virtual {v9}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v9

    aget-object v10, p3, v2

    .line 130
    invoke-virtual {v10}, Ljava/lang/ProcessBuilder$Redirect;->append()Z

    move-result v2

    invoke-direct {v6, v9, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v8, v6

    .line 133
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    const/4 v6, 0x2

    aput v2, v0, v6
    :try_end_ec
    .catchall {:try_start_cf .. :try_end_ec} :catchall_152

    move-object v2, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    .line 137
    .end local v0    # "std_fds":[I
    .end local v5    # "f0":Ljava/io/FileInputStream;
    .end local v7    # "f1":Ljava/io/FileOutputStream;
    .end local v8    # "f2":Ljava/io/FileOutputStream;
    .local v2, "std_fds":[I
    .local v17, "f0":Ljava/io/FileInputStream;
    .local v18, "f1":Ljava/io/FileOutputStream;
    .local v20, "f2":Ljava/io/FileOutputStream;
    :goto_f3
    :try_start_f3
    new-instance v0, Ljava/lang/UNIXProcess;

    const/4 v5, 0x0

    aget-object v6, v1, v5

    .line 138
    invoke-static {v6}, Ljava/lang/ProcessImpl;->toCString(Ljava/lang/String;)[B

    move-result-object v6

    array-length v8, v3

    aget v10, v13, v5

    .line 141
    invoke-static/range {p2 .. p2}, Ljava/lang/ProcessImpl;->toCString(Ljava/lang/String;)[B

    move-result-object v11
    :try_end_103
    .catchall {:try_start_f3 .. :try_end_103} :catchall_148

    move-object v5, v0

    move-object v7, v14

    move-object/from16 v9, v16

    move-object v12, v2

    move-object/from16 v19, v13

    .end local v13    # "envc":[I
    .local v19, "envc":[I
    move/from16 v13, p4

    :try_start_10c
    invoke-direct/range {v5 .. v13}, Ljava/lang/UNIXProcess;-><init>([B[BI[BI[B[IZ)V
    :try_end_10f
    .catchall {:try_start_10c .. :try_end_10f} :catchall_140

    .line 147
    if-eqz v17, :cond_12b

    :try_start_111
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_114
    .catchall {:try_start_111 .. :try_end_114} :catchall_115

    goto :goto_12b

    .line 149
    :catchall_115
    move-exception v0

    move-object v5, v0

    if-eqz v18, :cond_125

    :try_start_119
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_11c
    .catchall {:try_start_119 .. :try_end_11c} :catchall_11d

    goto :goto_125

    .line 150
    :catchall_11d
    move-exception v0

    move-object v5, v0

    if-eqz v20, :cond_124

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V

    :cond_124
    throw v5

    :cond_125
    :goto_125
    if-eqz v20, :cond_12a

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V

    .line 151
    :cond_12a
    throw v5

    .line 149
    :cond_12b
    :goto_12b
    if-eqz v18, :cond_139

    :try_start_12d
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_130
    .catchall {:try_start_12d .. :try_end_130} :catchall_131

    goto :goto_139

    .line 150
    :catchall_131
    move-exception v0

    move-object v5, v0

    if-eqz v20, :cond_138

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V

    :cond_138
    throw v5

    :cond_139
    :goto_139
    if-eqz v20, :cond_13e

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V

    .line 151
    :cond_13e
    nop

    .line 137
    return-object v0

    .line 147
    .end local v2    # "std_fds":[I
    :catchall_140
    move-exception v0

    move-object/from16 v5, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v20

    goto :goto_155

    .end local v19    # "envc":[I
    .restart local v13    # "envc":[I
    :catchall_148
    move-exception v0

    move-object/from16 v19, v13

    move-object/from16 v5, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v20

    .end local v13    # "envc":[I
    .restart local v19    # "envc":[I
    goto :goto_155

    .end local v17    # "f0":Ljava/io/FileInputStream;
    .end local v18    # "f1":Ljava/io/FileOutputStream;
    .end local v19    # "envc":[I
    .end local v20    # "f2":Ljava/io/FileOutputStream;
    .restart local v5    # "f0":Ljava/io/FileInputStream;
    .restart local v7    # "f1":Ljava/io/FileOutputStream;
    .restart local v8    # "f2":Ljava/io/FileOutputStream;
    .restart local v13    # "envc":[I
    :catchall_152
    move-exception v0

    move-object/from16 v19, v13

    .end local v13    # "envc":[I
    .restart local v19    # "envc":[I
    :goto_155
    if-eqz v5, :cond_171

    :try_start_157
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_15a
    .catchall {:try_start_157 .. :try_end_15a} :catchall_15b

    goto :goto_171

    .line 149
    :catchall_15b
    move-exception v0

    move-object v2, v0

    if-eqz v7, :cond_16b

    :try_start_15f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_162
    .catchall {:try_start_15f .. :try_end_162} :catchall_163

    goto :goto_16b

    .line 150
    :catchall_163
    move-exception v0

    move-object v2, v0

    if-eqz v8, :cond_16a

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    :cond_16a
    throw v2

    :cond_16b
    :goto_16b
    if-eqz v8, :cond_170

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 151
    :cond_170
    throw v2

    .line 149
    :cond_171
    :goto_171
    if-eqz v7, :cond_17f

    :try_start_173
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_176
    .catchall {:try_start_173 .. :try_end_176} :catchall_177

    goto :goto_17f

    .line 150
    :catchall_177
    move-exception v0

    move-object v2, v0

    if-eqz v8, :cond_17e

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    :cond_17e
    throw v2

    :cond_17f
    :goto_17f
    if-eqz v8, :cond_184

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 151
    :cond_184
    nop

    .line 152
    throw v0
.end method

.method private static blacklist toCString(Ljava/lang/String;)[B
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 52
    .local v0, "bytes":[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 53
    .local v1, "result":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-byte v3, v1, v2

    .line 57
    return-object v1
.end method
