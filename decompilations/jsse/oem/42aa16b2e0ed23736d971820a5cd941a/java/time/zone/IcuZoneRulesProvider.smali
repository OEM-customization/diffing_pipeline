.class public Ljava/time/zone/IcuZoneRulesProvider;
.super Ljava/time/zone/ZoneRulesProvider;
.source "IcuZoneRulesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/zone/IcuZoneRulesProvider$ZoneRulesCache;
    }
.end annotation


# static fields
.field private static final blacklist MAX_TRANSITIONS:I = 0x2710

.field private static final blacklist SECONDS_IN_DAY:I = 0x15180


# instance fields
.field private final blacklist cache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache<",
            "Ljava/lang/String;",
            "Ljava/time/zone/ZoneRules;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/time/zone/ZoneRulesProvider;-><init>()V

    .line 57
    new-instance v0, Ljava/time/zone/IcuZoneRulesProvider$ZoneRulesCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/time/zone/IcuZoneRulesProvider$ZoneRulesCache;-><init>(I)V

    iput-object v0, p0, Ljava/time/zone/IcuZoneRulesProvider;->cache:Llibcore/util/BasicLruCache;

    return-void
.end method

.method static blacklist generateZoneRules(Ljava/lang/String;)Ljava/time/zone/ZoneRules;
    .registers 27
    .param p0, "zoneId"    # Ljava/lang/String;

    .line 105
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 107
    .local v1, "timeZone":Landroid/icu/util/TimeZone;
    instance-of v2, v1, Landroid/icu/util/BasicTimeZone;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected time zone class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {v2, v0, v3}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 109
    move-object v2, v1

    check-cast v2, Landroid/icu/util/BasicTimeZone;

    .line 110
    .local v2, "tz":Landroid/icu/util/BasicTimeZone;
    invoke-virtual {v2}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    .line 112
    .local v3, "rules":[Landroid/icu/util/TimeZoneRule;
    const/4 v4, 0x0

    aget-object v5, v3, v4

    check-cast v5, Landroid/icu/util/InitialTimeZoneRule;

    .line 114
    .local v5, "initial":Landroid/icu/util/InitialTimeZoneRule;
    invoke-virtual {v5}, Landroid/icu/util/InitialTimeZoneRule;->getRawOffset()I

    move-result v6

    invoke-static {v6}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v6

    .line 115
    .local v6, "baseStandardOffset":Ljava/time/ZoneOffset;
    nop

    .line 116
    invoke-virtual {v5}, Landroid/icu/util/InitialTimeZoneRule;->getRawOffset()I

    move-result v7

    invoke-virtual {v5}, Landroid/icu/util/InitialTimeZoneRule;->getDSTSavings()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v7

    .line 118
    .local v7, "baseWallOffset":Ljava/time/ZoneOffset;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v8, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v9, "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v10, "lastRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    const/4 v11, 0x0

    .line 123
    .local v11, "preLastDstSavings":I
    const/4 v12, 0x0

    .line 124
    .local v12, "last1":Landroid/icu/util/AnnualTimeZoneRule;
    const/4 v13, 0x0

    .line 126
    .local v13, "last2":Landroid/icu/util/AnnualTimeZoneRule;
    const-wide/high16 v14, -0x8000000000000000L

    invoke-virtual {v2, v14, v15, v4}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v14

    .line 127
    .local v14, "transition":Landroid/icu/util/TimeZoneTransition;
    const/4 v15, 0x1

    .line 134
    .local v15, "transitionCount":I
    :goto_5b
    const/16 v16, 0x1

    if-eqz v14, :cond_16d

    .line 135
    invoke-virtual {v14}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v17

    .line 136
    .local v17, "from":Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v14}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    .line 137
    .local v4, "to":Landroid/icu/util/TimeZoneRule;
    const/16 v18, 0x0

    .line 138
    .local v18, "hadEffect":Z
    move-object/from16 v19, v1

    .end local v1    # "timeZone":Landroid/icu/util/TimeZone;
    .local v19, "timeZone":Landroid/icu/util/TimeZone;
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v1

    move-object/from16 v20, v3

    .end local v3    # "rules":[Landroid/icu/util/TimeZoneRule;
    .local v20, "rules":[Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    if-eq v1, v3, :cond_a2

    .line 139
    new-instance v1, Ljava/time/zone/ZoneOffsetTransition;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 140
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    .end local v5    # "initial":Landroid/icu/util/InitialTimeZoneRule;
    .end local v6    # "baseStandardOffset":Ljava/time/ZoneOffset;
    .local v21, "initial":Landroid/icu/util/InitialTimeZoneRule;
    .local v22, "baseStandardOffset":Ljava/time/ZoneOffset;
    invoke-virtual {v14}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    .line 141
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    invoke-static {v3}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v3

    .line 142
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v23

    move-object/from16 v24, v13

    .end local v13    # "last2":Landroid/icu/util/AnnualTimeZoneRule;
    .local v24, "last2":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-static/range {v23 .. v23}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v13

    invoke-direct {v1, v5, v6, v3, v13}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    .line 139
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const/16 v18, 0x1

    goto :goto_a8

    .line 138
    .end local v21    # "initial":Landroid/icu/util/InitialTimeZoneRule;
    .end local v22    # "baseStandardOffset":Ljava/time/ZoneOffset;
    .end local v24    # "last2":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v5    # "initial":Landroid/icu/util/InitialTimeZoneRule;
    .restart local v6    # "baseStandardOffset":Ljava/time/ZoneOffset;
    .restart local v13    # "last2":Landroid/icu/util/AnnualTimeZoneRule;
    :cond_a2
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v13

    .line 145
    .end local v5    # "initial":Landroid/icu/util/InitialTimeZoneRule;
    .end local v6    # "baseStandardOffset":Ljava/time/ZoneOffset;
    .end local v13    # "last2":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v21    # "initial":Landroid/icu/util/InitialTimeZoneRule;
    .restart local v22    # "baseStandardOffset":Ljava/time/ZoneOffset;
    .restart local v24    # "last2":Landroid/icu/util/AnnualTimeZoneRule;
    :goto_a8
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    add-int/2addr v1, v3

    .line 146
    .local v1, "fromTotalOffset":I
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    add-int/2addr v3, v5

    .line 147
    .local v3, "toTotalOffset":I
    if-eq v1, v3, :cond_e0

    .line 148
    new-instance v5, Ljava/time/zone/ZoneOffsetTransition;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 149
    move-object v13, v7

    move-object/from16 v23, v8

    .end local v7    # "baseWallOffset":Ljava/time/ZoneOffset;
    .end local v8    # "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local v13, "baseWallOffset":Ljava/time/ZoneOffset;
    .local v23, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    invoke-virtual {v14}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    .line 150
    invoke-static {v1}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v8

    .line 151
    move/from16 v25, v1

    .end local v1    # "fromTotalOffset":I
    .local v25, "fromTotalOffset":I
    invoke-static {v3}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-direct {v5, v6, v7, v8, v1}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    .line 148
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    const/16 v18, 0x1

    move/from16 v1, v18

    goto :goto_e7

    .line 147
    .end local v13    # "baseWallOffset":Ljava/time/ZoneOffset;
    .end local v23    # "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .end local v25    # "fromTotalOffset":I
    .restart local v1    # "fromTotalOffset":I
    .restart local v7    # "baseWallOffset":Ljava/time/ZoneOffset;
    .restart local v8    # "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    :cond_e0
    move/from16 v25, v1

    move-object v13, v7

    move-object/from16 v23, v8

    .end local v1    # "fromTotalOffset":I
    .end local v7    # "baseWallOffset":Ljava/time/ZoneOffset;
    .end local v8    # "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .restart local v13    # "baseWallOffset":Ljava/time/ZoneOffset;
    .restart local v23    # "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .restart local v25    # "fromTotalOffset":I
    move/from16 v1, v18

    .line 155
    .end local v18    # "hadEffect":Z
    .local v1, "hadEffect":Z
    :goto_e7
    const-string v5, "Transition changed neither total nor raw offset."

    invoke-static {v1, v0, v5}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 156
    instance-of v5, v4, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v5, :cond_139

    .line 158
    const-string v5, "AnnualTimeZoneRule is not permanent."

    const v6, 0x7fffffff

    if-nez v12, :cond_10e

    .line 159
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v7

    .line 160
    .end local v11    # "preLastDstSavings":I
    .local v7, "preLastDstSavings":I
    move-object v8, v4

    check-cast v8, Landroid/icu/util/AnnualTimeZoneRule;

    .line 162
    .end local v12    # "last1":Landroid/icu/util/AnnualTimeZoneRule;
    .local v8, "last1":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual {v8}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v11

    if-ne v11, v6, :cond_107

    move/from16 v6, v16

    goto :goto_108

    :cond_107
    const/4 v6, 0x0

    :goto_108
    invoke-static {v6, v0, v5}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    move v11, v7

    move-object v12, v8

    goto :goto_144

    .line 165
    .end local v7    # "preLastDstSavings":I
    .end local v8    # "last1":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v11    # "preLastDstSavings":I
    .restart local v12    # "last1":Landroid/icu/util/AnnualTimeZoneRule;
    :cond_10e
    move-object v7, v4

    check-cast v7, Landroid/icu/util/AnnualTimeZoneRule;

    .line 167
    .end local v24    # "last2":Landroid/icu/util/AnnualTimeZoneRule;
    .local v7, "last2":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual {v7}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v8

    if-ne v8, v6, :cond_11a

    move/from16 v6, v16

    goto :goto_11b

    :cond_11a
    const/4 v6, 0x0

    :goto_11b
    invoke-static {v6, v0, v5}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v14}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v8}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v14

    .line 172
    invoke-virtual {v14}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    if-ne v5, v12, :cond_130

    move/from16 v8, v16

    goto :goto_131

    :cond_130
    const/4 v8, 0x0

    :goto_131
    const-string v5, "Unexpected rule after 2 AnnualTimeZoneRules."

    invoke-static {v8, v0, v5}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 174
    move-object v1, v7

    const/4 v7, 0x0

    goto :goto_17d

    .line 178
    .end local v7    # "last2":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v24    # "last2":Landroid/icu/util/AnnualTimeZoneRule;
    :cond_139
    if-nez v12, :cond_13e

    move/from16 v8, v16

    goto :goto_13f

    :cond_13e
    const/4 v8, 0x0

    :goto_13f
    const-string v5, "Unexpected rule after AnnualTimeZoneRule."

    invoke-static {v8, v0, v5}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_144
    const/16 v5, 0x2710

    if-gt v15, v5, :cond_14b

    move/from16 v5, v16

    goto :goto_14c

    :cond_14b
    const/4 v5, 0x0

    :goto_14c
    const-string v6, "More than 10000 transitions."

    invoke-static {v5, v0, v6}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v14}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v14

    .line 183
    nop

    .end local v1    # "hadEffect":Z
    .end local v3    # "toTotalOffset":I
    .end local v4    # "to":Landroid/icu/util/TimeZoneRule;
    .end local v17    # "from":Landroid/icu/util/TimeZoneRule;
    .end local v25    # "fromTotalOffset":I
    add-int/lit8 v15, v15, 0x1

    .line 184
    move v4, v7

    move-object v7, v13

    move-object/from16 v1, v19

    move-object/from16 v3, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v8, v23

    move-object/from16 v13, v24

    goto/16 :goto_5b

    .line 134
    .end local v19    # "timeZone":Landroid/icu/util/TimeZone;
    .end local v20    # "rules":[Landroid/icu/util/TimeZoneRule;
    .end local v21    # "initial":Landroid/icu/util/InitialTimeZoneRule;
    .end local v22    # "baseStandardOffset":Ljava/time/ZoneOffset;
    .end local v23    # "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .end local v24    # "last2":Landroid/icu/util/AnnualTimeZoneRule;
    .local v1, "timeZone":Landroid/icu/util/TimeZone;
    .local v3, "rules":[Landroid/icu/util/TimeZoneRule;
    .restart local v5    # "initial":Landroid/icu/util/InitialTimeZoneRule;
    .restart local v6    # "baseStandardOffset":Ljava/time/ZoneOffset;
    .local v7, "baseWallOffset":Ljava/time/ZoneOffset;
    .local v8, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local v13, "last2":Landroid/icu/util/AnnualTimeZoneRule;
    :cond_16d
    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v13

    move-object v13, v7

    move v7, v4

    .end local v1    # "timeZone":Landroid/icu/util/TimeZone;
    .end local v3    # "rules":[Landroid/icu/util/TimeZoneRule;
    .end local v5    # "initial":Landroid/icu/util/InitialTimeZoneRule;
    .end local v6    # "baseStandardOffset":Ljava/time/ZoneOffset;
    .end local v7    # "baseWallOffset":Ljava/time/ZoneOffset;
    .end local v8    # "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local v13, "baseWallOffset":Ljava/time/ZoneOffset;
    .restart local v19    # "timeZone":Landroid/icu/util/TimeZone;
    .restart local v20    # "rules":[Landroid/icu/util/TimeZoneRule;
    .restart local v21    # "initial":Landroid/icu/util/InitialTimeZoneRule;
    .restart local v22    # "baseStandardOffset":Ljava/time/ZoneOffset;
    .restart local v23    # "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .restart local v24    # "last2":Landroid/icu/util/AnnualTimeZoneRule;
    move-object/from16 v1, v24

    .line 185
    .end local v24    # "last2":Landroid/icu/util/AnnualTimeZoneRule;
    .local v1, "last2":Landroid/icu/util/AnnualTimeZoneRule;
    :goto_17d
    if-eqz v12, :cond_19c

    .line 187
    if-eqz v1, :cond_184

    move/from16 v4, v16

    goto :goto_185

    :cond_184
    move v4, v7

    :goto_185
    const-string v3, "Only one AnnualTimeZoneRule."

    invoke-static {v4, v0, v3}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {v12, v11}, Ljava/time/zone/IcuZoneRulesProvider;->toZoneOffsetTransitionRule(Landroid/icu/util/AnnualTimeZoneRule;I)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v12}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v3

    invoke-static {v1, v3}, Ljava/time/zone/IcuZoneRulesProvider;->toZoneOffsetTransitionRule(Landroid/icu/util/AnnualTimeZoneRule;I)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_19c
    move-object/from16 v3, v22

    move-object/from16 v4, v23

    .end local v22    # "baseStandardOffset":Ljava/time/ZoneOffset;
    .end local v23    # "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local v3, "baseStandardOffset":Ljava/time/ZoneOffset;
    .local v4, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    invoke-static {v3, v13, v4, v9, v10}, Ljava/time/zone/ZoneRules;->of(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/time/zone/ZoneRules;

    move-result-object v5

    return-object v5
.end method

.method private static blacklist millisToOffset(I)Ljava/time/ZoneOffset;
    .registers 4
    .param p0, "offset"    # I

    .line 292
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist toZoneOffsetTransitionRule(Landroid/icu/util/AnnualTimeZoneRule;I)Ljava/time/zone/ZoneOffsetTransitionRule;
    .registers 22
    .param p0, "rule"    # Landroid/icu/util/AnnualTimeZoneRule;
    .param p1, "dstSavingMillisBefore"    # I

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v0

    .line 228
    .local v0, "dateTimeRule":Landroid/icu/util/DateTimeRule;
    sget-object v1, Ljava/time/Month;->JANUARY:Ljava/time/Month;

    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/time/Month;->plus(J)Ljava/time/Month;

    move-result-object v1

    .line 231
    .local v1, "month":Ljava/time/Month;
    sget-object v2, Ljava/time/DayOfWeek;->SATURDAY:Ljava/time/DayOfWeek;

    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/time/DayOfWeek;->plus(J)Ljava/time/DayOfWeek;

    move-result-object v2

    .line 232
    .local v2, "dayOfWeek":Ljava/time/DayOfWeek;
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_5d

    if-eq v3, v5, :cond_55

    if-eq v3, v4, :cond_50

    const/4 v6, 0x3

    if-ne v3, v6, :cond_35

    .line 246
    invoke-virtual {v1}, Ljava/time/Month;->maxLength()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v6

    add-int/2addr v3, v6

    sub-int/2addr v3, v5

    .line 247
    .local v3, "dayOfMonthIndicator":I
    goto :goto_63

    .line 252
    .end local v3    # "dayOfMonthIndicator":I
    :cond_35
    new-instance v3, Ljava/time/zone/ZoneRulesException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected date rule type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 240
    :cond_50
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v3

    .line 241
    .restart local v3    # "dayOfMonthIndicator":I
    goto :goto_63

    .line 250
    .end local v3    # "dayOfMonthIndicator":I
    :cond_55
    new-instance v3, Ljava/time/zone/ZoneRulesException;

    const-string v4, "Date rule type DOW is unsupported"

    invoke-direct {v3, v4}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_5d
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v3

    .line 236
    .restart local v3    # "dayOfMonthIndicator":I
    const/4 v2, 0x0

    .line 237
    nop

    .line 256
    :goto_63
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    long-to-int v13, v6

    .line 259
    .local v13, "secondOfDay":I
    const v6, 0x15180

    if-ne v13, v6, :cond_7a

    .line 260
    sget-object v6, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    .line 261
    .local v6, "time":Ljava/time/LocalTime;
    const/4 v7, 0x1

    move-object v14, v6

    move v15, v7

    .local v7, "timeEndOfDay":Z
    goto :goto_82

    .line 263
    .end local v6    # "time":Ljava/time/LocalTime;
    .end local v7    # "timeEndOfDay":Z
    :cond_7a
    int-to-long v6, v13

    invoke-static {v6, v7}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v6

    .line 264
    .restart local v6    # "time":Ljava/time/LocalTime;
    const/4 v7, 0x0

    move-object v14, v6

    move v15, v7

    .line 267
    .end local v6    # "time":Ljava/time/LocalTime;
    .local v14, "time":Ljava/time/LocalTime;
    .local v15, "timeEndOfDay":Z
    :goto_82
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v6

    if-eqz v6, :cond_b1

    if-eq v6, v5, :cond_ac

    if-ne v6, v4, :cond_91

    .line 275
    sget-object v4, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 276
    .local v4, "timeDefinition":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    move-object/from16 v16, v4

    goto :goto_b5

    .line 278
    .end local v4    # "timeDefinition":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    :cond_91
    new-instance v4, Ljava/time/zone/ZoneRulesException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected time rule type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 272
    :cond_ac
    sget-object v4, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 273
    .restart local v4    # "timeDefinition":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    move-object/from16 v16, v4

    goto :goto_b5

    .line 269
    .end local v4    # "timeDefinition":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    :cond_b1
    sget-object v4, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 270
    .restart local v4    # "timeDefinition":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    move-object/from16 v16, v4

    .line 281
    .end local v4    # "timeDefinition":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .local v16, "timeDefinition":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    :goto_b5
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-static {v4}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v17

    .line 282
    .local v17, "standardOffset":Ljava/time/ZoneOffset;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    add-int v4, v4, p1

    invoke-static {v4}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v18

    .line 283
    .local v18, "offsetBefore":Ljava/time/ZoneOffset;
    nop

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    add-int/2addr v4, v5

    .line 283
    invoke-static {v4}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v19

    .line 285
    .local v19, "offsetAfter":Ljava/time/ZoneOffset;
    move-object v4, v1

    move v5, v3

    move-object v6, v2

    move-object v7, v14

    move v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    invoke-static/range {v4 .. v12}, Ljava/time/zone/ZoneOffsetTransitionRule;->of(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist verify(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "check"    # Z
    .param p1, "zoneId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 209
    if-eqz p0, :cond_3

    .line 213
    return-void

    .line 210
    :cond_3
    new-instance v0, Ljava/time/zone/ZoneRulesException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 211
    const-string v2, "Failed verification of zone %s: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected blacklist provideRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;
    .registers 4
    .param p1, "zoneId"    # Ljava/lang/String;
    .param p2, "forCaching"    # Z

    .line 73
    iget-object v0, p0, Ljava/time/zone/IcuZoneRulesProvider;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v0, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/zone/ZoneRules;

    return-object v0
.end method

.method protected blacklist provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .registers 5
    .param p1, "zoneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Ljava/time/zone/ZoneRules;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/TreeMap;

    .line 79
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v1

    .line 80
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->provideRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;

    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 78
    return-object v0
.end method

.method protected blacklist provideZoneIds()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    .line 62
    .local v0, "zoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 65
    const-string v1, "GMT+0"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 66
    const-string v1, "GMT-0"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 67
    return-object v0
.end method
