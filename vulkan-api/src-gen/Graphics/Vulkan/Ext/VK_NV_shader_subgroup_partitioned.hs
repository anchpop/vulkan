{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE MagicHash       #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE Strict          #-}
{-# LANGUAGE ViewPatterns    #-}
module Graphics.Vulkan.Ext.VK_NV_shader_subgroup_partitioned
       (-- * Vulkan extension: @VK_NV_shader_subgroup_partitioned@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Jeff Bolz @jeffbolznv@
        --
        -- author: @NV@
        --
        -- type: @device@
        --
        -- Extension number: @199@
        VK_NV_SHADER_SUBGROUP_PARTITIONED_SPEC_VERSION,
        pattern VK_NV_SHADER_SUBGROUP_PARTITIONED_SPEC_VERSION,
        VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME,
        pattern VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME,
        pattern VK_SUBGROUP_FEATURE_PARTITIONED_BIT_NV)
       where
import           GHC.Ptr                                         (Ptr (..))
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Types.Enum.SubgroupFeatureFlags (VkSubgroupFeatureBitmask (..),
                                                                  VkSubgroupFeatureFlagBits)

pattern VK_NV_SHADER_SUBGROUP_PARTITIONED_SPEC_VERSION ::
        (Num a, Eq a) => a

pattern VK_NV_SHADER_SUBGROUP_PARTITIONED_SPEC_VERSION = 1

type VK_NV_SHADER_SUBGROUP_PARTITIONED_SPEC_VERSION = 1

pattern VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME :: CString

pattern VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME <-
        (is_VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME -> True)
  where VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME
          = _VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME

{-# INLINE _VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME #-}

_VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME :: CString
_VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME
  = Ptr "VK_NV_shader_subgroup_partitioned\NUL"#

{-# INLINE is_VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME #-}

is_VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME ::
                                                    CString -> Bool
is_VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME
  = (EQ ==) .
      cmpCStrings _VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME

type VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME =
     "VK_NV_shader_subgroup_partitioned"

-- | bitpos = @8@
pattern VK_SUBGROUP_FEATURE_PARTITIONED_BIT_NV ::
        VkSubgroupFeatureFlagBits

pattern VK_SUBGROUP_FEATURE_PARTITIONED_BIT_NV =
        VkSubgroupFeatureFlagBits 256
