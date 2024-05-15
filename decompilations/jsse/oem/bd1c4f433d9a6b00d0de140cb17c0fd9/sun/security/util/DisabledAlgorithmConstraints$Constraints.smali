.class Lsun/security/util/DisabledAlgorithmConstraints$Constraints;
.super Ljava/lang/Object;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Constraints"
.end annotation


# static fields
.field private static final keySizePattern:Ljava/util/regex/Pattern;


# instance fields
.field private constraintsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lsun/security/util/DisabledAlgorithmConstraints$Constraint;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 240
    const-string/jumbo v0, "keySize\\s*(<=|<|==|!=|>|>=)\\s*(\\d+)"

    .line 239
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->keySizePattern:Ljava/util/regex/Pattern;

    .line 237
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 20
    .param p1, "constraintArray"    # [Ljava/lang/String;

    .prologue
    .line 242
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    .line 243
    const/4 v10, 0x0

    move-object/from16 v0, p1

    array-length v13, v0

    move v12, v10

    :goto_11
    if-ge v12, v13, :cond_149

    aget-object v3, p1, v12

    .line 244
    .local v3, "constraintEntry":Ljava/lang/String;
    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_21

    .line 243
    :cond_1d
    :goto_1d
    add-int/lit8 v10, v12, 0x1

    move v12, v10

    goto :goto_11

    .line 248
    :cond_21
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    if-eqz v10, :cond_46

    .line 250
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Constraints: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 257
    :cond_46
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 258
    .local v9, "space":I
    if-lez v9, :cond_f4

    .line 260
    const/4 v10, 0x0

    invoke-virtual {v3, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 261
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 260
    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 259
    invoke-static {v10}, Lsun/security/util/AlgorithmDecomposer;->hashName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "algorithm":Ljava/lang/String;
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 271
    .local v8, "policy":Ljava/lang/String;
    const/4 v2, 0x0

    .line 272
    .local v2, "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    const/4 v6, 0x0

    .line 274
    .local v6, "lastConstraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    const/4 v5, 0x0

    .line 276
    .local v5, "jdkCALimit":Z
    const-string/jumbo v10, "&"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v10, 0x0

    array-length v15, v14

    move v11, v10

    .end local v2    # "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    .end local v6    # "lastConstraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    :goto_70
    if-ge v11, v15, :cond_1d

    aget-object v4, v14, v11

    .line 277
    .local v4, "entry":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 279
    sget-object v10, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->keySizePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 280
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_108

    .line 281
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    if-eqz v10, :cond_a9

    .line 282
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Constraints set to keySize: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 285
    :cond_a9
    new-instance v2, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;

    .line 286
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->of(Ljava/lang/String;)Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    move-result-object v10

    .line 287
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 285
    move/from16 v0, v16

    invoke-direct {v2, v1, v10, v0}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;-><init>(Ljava/lang/String;Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;I)V

    .line 304
    :cond_c5
    :goto_c5
    if-nez v6, :cond_146

    .line 305
    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_df

    .line 306
    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    .line 307
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 306
    move-object/from16 v0, v16

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_df
    if-eqz v2, :cond_ee

    .line 310
    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_ee
    :goto_ee
    move-object v6, v2

    .line 276
    .local v6, "lastConstraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto/16 :goto_70

    .line 264
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v4    # "entry":Ljava/lang/String;
    .end local v5    # "jdkCALimit":Z
    .end local v6    # "lastConstraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "policy":Ljava/lang/String;
    :cond_f4
    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    .line 265
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 266
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 264
    invoke-interface {v10, v11, v14}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d

    .line 289
    .restart local v1    # "algorithm":Ljava/lang/String;
    .restart local v4    # "entry":Ljava/lang/String;
    .restart local v5    # "jdkCALimit":Z
    .restart local v7    # "matcher":Ljava/util/regex/Matcher;
    .restart local v8    # "policy":Ljava/lang/String;
    :cond_108
    const-string/jumbo v10, "jdkCA"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c5

    .line 290
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    if-eqz v10, :cond_123

    .line 291
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    const-string/jumbo v16, "Constraints set to jdkCA."

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 293
    :cond_123
    if-eqz v5, :cond_13f

    .line 294
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Only one jdkCA entry allowed in property. Constraint: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 298
    :cond_13f
    new-instance v2, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;

    invoke-direct {v2, v1}, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;-><init>(Ljava/lang/String;)V

    .line 299
    .local v2, "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    const/4 v5, 0x1

    goto :goto_c5

    .line 313
    .end local v2    # "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    :cond_146
    iput-object v2, v6, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    goto :goto_ee

    .line 318
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v3    # "constraintEntry":Ljava/lang/String;
    .end local v4    # "entry":Ljava/lang/String;
    .end local v5    # "jdkCALimit":Z
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "policy":Ljava/lang/String;
    .end local v9    # "space":I
    :cond_149
    return-void
.end method

.method private getConstraints(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lsun/security/util/DisabledAlgorithmConstraints$Constraint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public permits(Lsun/security/util/CertConstraintParameters;)V
    .registers 12
    .param p1, "cp"    # Lsun/security/util/CertConstraintParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p1}, Lsun/security/util/CertConstraintParameters;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 348
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v7

    if-eqz v7, :cond_29

    .line 349
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Constraints.permits(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 354
    :cond_29
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsun/security/util/AlgorithmDecomposer;->decomposeOneHash(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 355
    .local v2, "algorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_39

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 356
    :cond_39
    return-void

    .line 360
    :cond_3a
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "algorithm$iterator":Ljava/util/Iterator;
    :cond_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 364
    .local v0, "algorithm":Ljava/lang/String;
    invoke-direct {p0, v0}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->getConstraints(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 365
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$Constraint;>;"
    if-eqz v6, :cond_49

    .line 368
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "constraint$iterator":Ljava/util/Iterator;
    :goto_5f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    .line 369
    .local v4, "constraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    invoke-virtual {v4, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Lsun/security/util/CertConstraintParameters;)V

    goto :goto_5f

    .line 372
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v4    # "constraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    .end local v5    # "constraint$iterator":Ljava/util/Iterator;
    .end local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$Constraint;>;"
    :cond_6f
    return-void
.end method

.method public permits(Ljava/security/Key;)Z
    .registers 8
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    const/4 v4, 0x1

    .line 327
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->getConstraints(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 328
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$Constraint;>;"
    if-nez v2, :cond_c

    .line 329
    return v4

    .line 331
    :cond_c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "constraint$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    .line 332
    .local v0, "constraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    invoke-virtual {v0, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Ljava/security/Key;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 333
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 334
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "keySizeConstraint: failed key constraint check "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 335
    invoke-static {p1}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v5

    .line 334
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 337
    :cond_47
    const/4 v3, 0x0

    return v3

    .line 340
    .end local v0    # "constraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    :cond_49
    return v4
.end method
