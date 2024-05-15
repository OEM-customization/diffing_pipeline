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
.field private static final greylist-max-o keySizePattern:Ljava/util/regex/Pattern;


# instance fields
.field private greylist-max-o constraintsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lsun/security/util/DisabledAlgorithmConstraints$Constraint;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 239
    const-string v0, "keySize\\s*(<=|<|==|!=|>|>=)\\s*(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->keySizePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor greylist-max-o <init>([Ljava/lang/String;)V
    .registers 20
    .param p1, "constraintArray"    # [Ljava/lang/String;

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    .line 243
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_151

    aget-object v5, v1, v4

    .line 244
    .local v5, "constraintEntry":Ljava/lang/String;
    if-eqz v5, :cond_146

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 245
    move/from16 v16, v2

    goto/16 :goto_148

    .line 248
    :cond_21
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 249
    # getter for: Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->access$000()Lsun/security/util/Debug;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 250
    # getter for: Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->access$000()Lsun/security/util/Debug;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Constraints: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 257
    :cond_43
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 258
    .local v6, "space":I
    if-lez v6, :cond_131

    .line 259
    nop

    .line 260
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 261
    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 259
    invoke-static {v7}, Lsun/security/util/AlgorithmDecomposer;->hashName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "algorithm":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 271
    .local v8, "policy":Ljava/lang/String;
    const/4 v9, 0x0

    .line 272
    .local v9, "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    const/4 v10, 0x0

    .line 274
    .local v10, "lastConstraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    const/4 v11, 0x0

    .line 276
    .local v11, "jdkCALimit":Z
    const-string v12, "&"

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    move v14, v3

    :goto_6b
    if-ge v14, v13, :cond_12c

    aget-object v15, v12, v14

    .line 277
    .local v15, "entry":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 279
    sget-object v3, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->keySizePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 280
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_bf

    .line 281
    # getter for: Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->access$000()Lsun/security/util/Debug;

    move-result-object v16

    if-eqz v16, :cond_a2

    .line 282
    # getter for: Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->access$000()Lsun/security/util/Debug;

    move-result-object v1

    move/from16 v16, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v6

    .end local v6    # "space":I
    .local v17, "space":I
    const-string v6, "Constraints set to keySize: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_a6

    .line 281
    .end local v17    # "space":I
    .restart local v6    # "space":I
    :cond_a2
    move/from16 v16, v2

    move/from16 v17, v6

    .line 285
    .end local v6    # "space":I
    .restart local v17    # "space":I
    :goto_a6
    new-instance v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;

    .line 286
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->of(Ljava/lang/String;)Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    move-result-object v2

    const/4 v6, 0x2

    .line 287
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v7, v2, v6}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;-><init>(Ljava/lang/String;Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;I)V

    move-object v9, v1

    .end local v9    # "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    .local v1, "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    goto :goto_fc

    .line 289
    .end local v1    # "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    .end local v17    # "space":I
    .restart local v6    # "space":I
    .restart local v9    # "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    :cond_bf
    move/from16 v16, v2

    move/from16 v17, v6

    .end local v6    # "space":I
    .restart local v17    # "space":I
    const-string v1, "jdkCA"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 290
    # getter for: Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->access$000()Lsun/security/util/Debug;

    move-result-object v1

    if-eqz v1, :cond_da

    .line 291
    # getter for: Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->access$000()Lsun/security/util/Debug;

    move-result-object v1

    const-string v2, "Constraints set to jdkCA."

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 293
    :cond_da
    if-nez v11, :cond_e5

    .line 298
    new-instance v1, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;

    invoke-direct {v1, v7}, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;-><init>(Ljava/lang/String;)V

    .line 299
    .end local v9    # "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    .restart local v1    # "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    const/4 v2, 0x1

    move-object v9, v1

    move v11, v2

    .end local v11    # "jdkCALimit":Z
    .local v2, "jdkCALimit":Z
    goto :goto_fc

    .line 294
    .end local v1    # "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    .end local v2    # "jdkCALimit":Z
    .restart local v9    # "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    .restart local v11    # "jdkCALimit":Z
    :cond_e5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only one jdkCA entry allowed in property. Constraint: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_fc
    :goto_fc
    if-nez v10, :cond_11e

    .line 305
    iget-object v1, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_110

    .line 306
    iget-object v1, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_110
    if-eqz v9, :cond_120

    .line 310
    iget-object v1, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_120

    .line 313
    :cond_11e
    iput-object v9, v10, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    .line 315
    :cond_120
    :goto_120
    move-object v10, v9

    .line 276
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v15    # "entry":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v6, v17

    const/4 v3, 0x0

    goto/16 :goto_6b

    .end local v17    # "space":I
    .restart local v6    # "space":I
    :cond_12c
    move/from16 v16, v2

    move/from16 v17, v6

    .end local v6    # "space":I
    .restart local v17    # "space":I
    goto :goto_148

    .line 264
    .end local v7    # "algorithm":Ljava/lang/String;
    .end local v8    # "policy":Ljava/lang/String;
    .end local v9    # "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    .end local v10    # "lastConstraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    .end local v11    # "jdkCALimit":Z
    .end local v17    # "space":I
    .restart local v6    # "space":I
    :cond_131
    move/from16 v16, v2

    move/from16 v17, v6

    .end local v6    # "space":I
    .restart local v17    # "space":I
    iget-object v1, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 265
    invoke-virtual {v5, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 264
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    goto :goto_148

    .line 244
    .end local v17    # "space":I
    :cond_146
    move/from16 v16, v2

    .line 243
    .end local v5    # "constraintEntry":Ljava/lang/String;
    :goto_148
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v16

    const/4 v3, 0x0

    goto/16 :goto_11

    .line 318
    :cond_151
    return-void
.end method

.method private greylist-max-o getConstraints(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lsun/security/util/DisabledAlgorithmConstraints$Constraint;",
            ">;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o permits(Lsun/security/util/CertConstraintParameters;)V
    .registers 9
    .param p1, "cp"    # Lsun/security/util/CertConstraintParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 346
    invoke-virtual {p1}, Lsun/security/util/CertConstraintParameters;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 348
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    # getter for: Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->access$000()Lsun/security/util/Debug;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 349
    # getter for: Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->access$000()Lsun/security/util/Debug;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constraints.permits(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 353
    :cond_26
    nop

    .line 354
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/security/util/AlgorithmDecomposer;->decomposeOneHash(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 355
    .local v1, "algorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_70

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_70

    .line 360
    :cond_38
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 364
    .local v3, "algorithm":Ljava/lang/String;
    invoke-direct {p0, v3}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->getConstraints(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 365
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$Constraint;>;"
    if-nez v4, :cond_5a

    .line 366
    goto :goto_47

    .line 368
    :cond_5a
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    .line 369
    .local v6, "constraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    invoke-virtual {v6, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Lsun/security/util/CertConstraintParameters;)V

    .line 370
    .end local v6    # "constraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    goto :goto_5e

    .line 371
    .end local v3    # "algorithm":Ljava/lang/String;
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$Constraint;>;"
    :cond_6e
    goto :goto_47

    .line 372
    :cond_6f
    return-void

    .line 356
    :cond_70
    :goto_70
    return-void
.end method

.method public greylist-max-o permits(Ljava/security/Key;)Z
    .registers 7
    .param p1, "key"    # Ljava/security/Key;

    .line 327
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->getConstraints(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 328
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$Constraint;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 329
    return v1

    .line 331
    :cond_c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    .line 332
    .local v3, "constraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    invoke-virtual {v3, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Ljava/security/Key;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 333
    # getter for: Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->access$000()Lsun/security/util/Debug;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 334
    # getter for: Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->access$000()Lsun/security/util/Debug;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keySizeConstraint: failed key constraint check "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-static {p1}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 337
    :cond_44
    const/4 v1, 0x0

    return v1

    .line 339
    .end local v3    # "constraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    :cond_46
    goto :goto_10

    .line 340
    :cond_47
    return v1
.end method
