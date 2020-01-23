(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.suffixof (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (= tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:24.751577  2770 UnaryAutomaton.cpp:325] 1
;I0818 17:36:24.751627  2770 UnaryAutomaton.cpp:326] 1
;I0818 17:36:24.751636  2770 UnaryAutomaton.cpp:327] 1
;F0818 17:36:24.761337  2770 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f5464758f5d  google::LogMessage::Fail()
;    @     0x7f546475b513  google::LogMessage::SendToLog()
;    @     0x7f5464758aeb  google::LogMessage::Flush()
;    @     0x7f546475a45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f5464d7ca26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f5464dca992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f5464cc99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5464d7b762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f5464dc7df0  Vlab::SMT::ToString::accept()
;    @     0x7f5464cc99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5464d79803  Vlab::Solver::VariableValueComputer::visitEnds()
;    @     0x7f5464dc5fd6  Vlab::SMT::Ends::accept()
;    @     0x7f5464cc99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5464d74878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f5464db55ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f5464dac96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f5464dc1b5c  Vlab::SMT::And::accept()
;    @     0x7f5464cc99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5464db5a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5464dabd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f5464dbfd2a  Vlab::SMT::Assert::accept()
;    @     0x7f5464cc99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5464dce699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f5464dbf067  Vlab::SMT::Script::visit_children()
;    @     0x7f5464cc99e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5464dabb35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f5464dbf03c  Vlab::SMT::Script::accept()
;    @     0x7f5464cc99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5464dab7bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f5464cafb84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f5463e0b830  __libc_start_main
