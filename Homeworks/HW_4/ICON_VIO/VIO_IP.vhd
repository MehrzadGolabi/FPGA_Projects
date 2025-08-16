-------------------------------------------------------------------------------
-- Copyright (c) 2025 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 14.7
--  \   \         Application: XILINX CORE Generator
--  /   /         Filename   : VIO_IP.vhd
-- /___/   /\     Timestamp  : Tue May 20 21:09:31 Iran Standard Time 2025
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: VHDL Synthesis Wrapper
-------------------------------------------------------------------------------
-- This wrapper is used to integrate with Project Navigator and PlanAhead

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY VIO_IP IS
  port (
    CONTROL: inout std_logic_vector(35 downto 0);
    ASYNC_IN: in std_logic_vector(7 downto 0);
    ASYNC_OUT: out std_logic_vector(6 downto 0));
END VIO_IP;

ARCHITECTURE VIO_IP_a OF VIO_IP IS
BEGIN

END VIO_IP_a;
